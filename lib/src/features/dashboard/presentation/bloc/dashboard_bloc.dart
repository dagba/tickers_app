// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'dart:async';
import 'dart:collection';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tickers_app/src/features/crypto/domain/interactors/crypto_interactor.dart';
import 'package:tickers_app/src/features/crypto/domain/models/crypto_exchange.dart';
import 'package:tickers_app/src/features/crypto/domain/models/crypto_symbol.dart';
import 'package:tickers_app/src/features/crypto/domain/models/trade_last_price_update.dart';

part 'dashboard_bloc.freezed.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

@Injectable()
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  static const _defaultPageSize = 200;
  static const _defaultExchange = CryptoExchange.binance;

  final CryptoInteractor _cryptoInteractor;

  StreamSubscription<TradeLastPriceUpdateMap>? _lastPriceUpdatesSubscription;

  DashboardBloc(this._cryptoInteractor)
      : super(const DashboardState.initial()) {
    _subscribeToPrices();

    on<InitDashboardEvent>(_onInit);
    on<UpdatePricesDashboardEvent>(_onPricesUpdated);
    on<LoadMoreDashboardEvent>(_onLoadMoreTrades);
  }

  @override
  Future<void> close() {
    _lastPriceUpdatesSubscription?.cancel();
    return super.close();
  }

  Future<void> _onInit(
    InitDashboardEvent event,
    Emitter<DashboardState> emit,
  ) async {
    try {
      emit(const DashboardState.loading());

      final symbols = await _cryptoInteractor.getSymbolsAndSubscribe(
        exchange: _defaultExchange,
        page: 1,
        pageSize: _defaultPageSize,
      );

      final trades = TradeLastPriceUpdateMap.from({});
      final symbolsMap = Map<String, CryptoSymbol>.from({});

      for (final symbol in symbols) {
        trades[symbol.symbol] = TradeLastPriceUpdate(
          symbol: symbol.symbol,
          price: 0.0,
          timestamp: DateTime.now(),
          volume: 0.0,
        );
        symbolsMap[symbol.symbol] = symbol;
      }

      emit(
        DashboardState.loaded(
          trades: UnmodifiableMapView(trades),
          symbols: UnmodifiableMapView(symbolsMap),
        ),
      );
    } on Object catch (e) {
      emit(DashboardState.error(e.toString()));
      log('Error initializing dashboard', error: e);
    }
  }

  Future<void> _onPricesUpdated(
    UpdatePricesDashboardEvent event,
    Emitter<DashboardState> emit,
  ) async {
    try {
      final updatedTrades = _updatePrices(
        event.lastPriceUpdates,
        state.maybeMap(
          loaded: (loadedState) => loadedState.trades,
          loadingMore: (loadingMoreState) => loadingMoreState.trades,
          orElse: () => UnmodifiableMapView({}),
        ),
      );

      state.mapOrNull(
        loaded: (loadedState) => emit(
          loadedState.copyWith(trades: updatedTrades),
        ),
        loadingMore: (loadingMoreState) => emit(
          loadingMoreState.copyWith(trades: updatedTrades),
        ),
      );
    } on Object catch (e) {
      emit(DashboardState.error(e.toString()));
      log('Error updating prices', error: e);
    }
  }

  UnmodifiableMapView<String, TradeLastPriceUpdate> _updatePrices(
    LinkedHashMap<String, TradeLastPriceUpdate> lastTradeUpdates,
    UnmodifiableMapView<String, TradeLastPriceUpdate> existingTrades,
  ) {
    final trades = LinkedHashMap<String, TradeLastPriceUpdate>.from({});
    for (final symbol in lastTradeUpdates.keys) {
      final existingTrade = existingTrades[symbol];

      if (existingTrade != null && existingTrade.price <= 0) {
        trades[symbol] = lastTradeUpdates[symbol]!;
      }
    }

    for (final trade in existingTrades.entries) {
      if (!trades.containsKey(trade.key)) {
        final symbolTradeUpdate = lastTradeUpdates[trade.key];
        final existingTrade = existingTrades[trade.key]!;

        trades[trade.key] = symbolTradeUpdate ?? existingTrade;
      }
    }

    return UnmodifiableMapView(trades);
  }

  Future<void> _onLoadMoreTrades(
    LoadMoreDashboardEvent event,
    Emitter<DashboardState> emit,
  ) async {
    await state.mapOrNull(
      loaded: (loadedState) async {
        if (loadedState.hasReachedMax) return;
        emit(
          DashboardState.loadingMore(
            trades: loadedState.trades,
            symbols: loadedState.symbols,
            hasReachedMax: loadedState.hasReachedMax,
          ),
        );

        try {
          final page = loadedState.page + 1;

          final symbols = await _cryptoInteractor.getSymbolsAndSubscribe(
            exchange: _defaultExchange,
            page: page,
            pageSize: _defaultPageSize,
          );

          final trades = LinkedHashMap<String, TradeLastPriceUpdate>.from(
            loadedState.trades,
          );

          final allSymbols = LinkedHashMap<String, CryptoSymbol>.from(
            loadedState.symbols,
          );

          for (final symbol in symbols) {
            trades.addAll({
              symbol.symbol: TradeLastPriceUpdate(
                symbol: symbol.symbol,
                price: 0.0,
                timestamp: DateTime.now(),
                volume: 0.0,
              ),
            });
            allSymbols.addAll({symbol.symbol: symbol});
          }

          emit(
            loadedState.copyWith(
              page: page,
              trades: UnmodifiableMapView(trades),
              symbols: UnmodifiableMapView(allSymbols),
              hasReachedMax: symbols.isEmpty,
            ),
          );
        } on Object catch (e, st) {
          log('Error loading more trades', error: e, stackTrace: st);
          emit(DashboardState.error(e.toString()));
        }
      },
    );
  }

  void _subscribeToPrices() {
    _lastPriceUpdatesSubscription =
        _cryptoInteractor.tradeLastPriceUpdates.listen(
      (trades) => state.mapOrNull(
        loaded: (state) {
          log('lastTradeUpdate: $state');

          return add(DashboardEvent.updatePrices(lastPriceUpdates: trades));
        },
      ),
      onError: (Object? e, StackTrace st) {
        log('Error subscribing to prices', error: e, stackTrace: st);
        emit(
          DashboardState.error(
            'Error subscribing to prices'
            ' Please try again.'
            ' $e',
          ),
        );
      },
    );
  }
}
