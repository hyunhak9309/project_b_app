import 'package:flutter/material.dart';
import 'package:project_b/presentation/left/widget/mongo_chart.dart';
import 'package:project_b/presentation/left/widget/orderbook_chart.dart';
import 'package:project_b/presentation/left/widget/up_bit_chart.dart';

class Left extends StatelessWidget {
  const Left({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        UpBitChart(),
        OrderBookChart(),
        MongoChart(),
      ],
    );
  }
}
