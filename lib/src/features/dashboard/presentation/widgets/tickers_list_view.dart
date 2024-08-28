import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tickers_app/src/features/crypto/domain/models/crypto_symbol.dart';
import 'package:tickers_app/src/features/crypto/domain/models/trade_last_price_update.dart';
import 'package:tickers_app/src/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:tickers_app/src/features/dashboard/presentation/widgets/ticker_list_tile.dart';

class TickersListView extends StatefulWidget {
  final UnmodifiableMapView<String, TradeLastPriceUpdate> trades;
  final UnmodifiableMapView<String, CryptoSymbol> symbols;
  final bool hasReachedMax;

  const TickersListView({
    required this.trades,
    required this.symbols,
    required this.hasReachedMax,
    super.key,
  });

  @override
  State<TickersListView> createState() => _TickersListViewState();
}

class _TickersListViewState extends State<TickersListView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverList.builder(
          itemCount: widget.trades.length,
          itemBuilder: (context, index) {
            final symbol = widget.trades.keys.elementAt(index);
            final trade = widget.trades[symbol];
            final cryptoSymbol = widget.symbols[symbol];

            if (cryptoSymbol == null || trade == null) {
              return const SizedBox.shrink();
            }

            return TickerListTile(
              key: ValueKey(symbol),
              lastTrade: trade,
              symbol: cryptoSymbol,
            );
          },
        ),
        if (!widget.hasReachedMax)
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
      ],
    );
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent &&
        !widget.hasReachedMax) {
      context.read<DashboardBloc>().add(const DashboardEvent.loadMore());
    }
  }
}
