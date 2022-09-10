import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_b/presentation/center/home_controller.dart';
import 'package:project_b/presentation/center/widget/my_asset.dart';
import 'package:project_b/presentation/center/widget/order_record.dart';
import 'package:project_b/presentation/center/widget/rest_card.dart';
import 'package:project_b/presentation/center/widget/transaction_board.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child:
                        Obx(() => HomeController.to.transactionList.isNotEmpty
                            ? const TransactionBoard(
                                position: 0,
                              )
                            : const RestCard(position: 0))),
                Expanded(
                    flex: 1,
                    child:
                        Obx(() => HomeController.to.transactionList.length > 1
                            ? const TransactionBoard(
                                position: 1,
                              )
                            : const RestCard(position: 1))),
              ],
            )),
        Expanded(
            flex: 3,
            child: Column(
              children: const [
                Expanded(flex: 1, child: OrderRecord()),
                Expanded(flex: 1, child: MyAsset()),
              ],
            ))
      ],
    );
  }
}
