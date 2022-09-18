import 'package:flutter/material.dart';

import 'b_text.dart';
import '../market/market_controller.dart';

class CoinName extends StatelessWidget {
  const CoinName({required this.market, Key? key}) : super(key: key);
  final String market;

  @override
  Widget build(BuildContext context) {
    var text = "";

    if (MarketController.to.marketCode.isNotEmpty) {
      text = MarketController
          .to
          .marketCode[MarketController.to.marketCode
              .indexWhere((element) => element.market == market)]
          .koreanName;
    }

    return BText(text, 14, fontWeight: FontWeight.bold, );
  }
}
