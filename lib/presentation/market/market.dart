import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_b/presentation/market/market_controller.dart';
import 'mongo_chart.dart';
import 'orderbook_chart.dart';
import 'up_bit_chart.dart';

class Market extends GetView<MarketController> {
  const Market({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(flex: 1, child: UpBitChart()),
        Expanded(flex: 1, child: OrderBookChart()),
        Expanded(flex: 1, child: MongoChart()),
      ],
    );
  }
}
