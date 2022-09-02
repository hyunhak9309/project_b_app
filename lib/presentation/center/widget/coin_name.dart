import 'package:flutter/material.dart';

import '../../component/b_text.dart';
import '../../left/left_controller.dart';

class CoinName extends StatelessWidget {
  const CoinName({required this.market, Key? key}) : super(key: key);
  final String market;

  @override
  Widget build(BuildContext context) {
    var text = "";

    if (LeftController.to.marketCode.isNotEmpty) {
      text = LeftController
          .to
          .marketCode[LeftController.to.marketCode
              .indexWhere((element) => element.market == market)]
          .koreanName;
    }

    return BText(text, 14, fontWeight: FontWeight.bold, color: Colors.yellow,);
  }
}
