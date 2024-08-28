import 'package:flutter/material.dart';
import 'package:tickers_app/src/features/crypto/domain/models/crypto_symbol.dart';
import 'package:tickers_app/src/features/crypto/domain/models/trade_last_price_update.dart';

enum LastTradeMove {
  up,
  down,
  none,
}

class TickerListTile extends StatefulWidget {
  final CryptoSymbol symbol;
  final TradeLastPriceUpdate lastTrade;

  const TickerListTile({
    required this.symbol,
    required this.lastTrade,
    super.key,
  });

  @override
  State<TickerListTile> createState() => __ListTileState();
}

class __ListTileState extends State<TickerListTile> {
  var _lastTradeMoved = LastTradeMove.none;
  late CryptoSymbol _symbol;
  late TradeLastPriceUpdate _lastTrade;

  @override
  void initState() {
    _symbol = widget.symbol;
    _lastTrade = widget.lastTrade;

    super.initState();
  }

  @override
  void didUpdateWidget(covariant TickerListTile oldWidget) {
    final newLastTrade = widget.lastTrade;
    final oldLastTrade = oldWidget.lastTrade;

    // if a new trade is earlier than an old trade
    // we don't need to update the price
    final isAfter = newLastTrade.timestamp.isAfter(oldLastTrade.timestamp);

    if (isAfter) {
      _symbol = widget.symbol;
      _lastTrade = newLastTrade;

      if (newLastTrade.price > oldLastTrade.price) {
        _lastTradeMoved = LastTradeMove.up;
      } else if (widget.lastTrade.price < oldWidget.lastTrade.price) {
        _lastTradeMoved = LastTradeMove.down;
      } else {
        _lastTradeMoved = LastTradeMove.none;
      }
    } else {
      _lastTradeMoved = LastTradeMove.none;
      return;
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    final symbol = _symbol;
    final lastTrade = _lastTrade;
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final priceColor = switch (_lastTradeMoved) {
      LastTradeMove.up => colorScheme.inversePrimary,
      LastTradeMove.down => colorScheme.error,
      LastTradeMove.none => colorScheme.secondary,
    };

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      key: ValueKey(symbol),
      title: Text(symbol.displaySymbol),
      subtitle: Text(
        symbol.description,
        style: textTheme.bodyMedium,
      ),
      trailing: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: 300.0,
        ),
        child: Text(
          lastTrade.price == 0.0 ? '-' : lastTrade.price.toString(),
          style: DefaultTextStyle.of(context).style.copyWith(
                color: priceColor,
              ),
        ),
      ),
    );
  }
}
