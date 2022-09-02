import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_b/presentation/center/home_controller.dart';
import 'package:project_b/presentation/center/widget/my_asset.dart';
import 'package:project_b/presentation/center/widget/rest_card.dart';
import 'package:project_b/presentation/center/widget/transaction_board.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Obx(() => controller.transactionList.isNotEmpty
                        ? const TransactionBoard(
                            position: 0,
                          )
                        : const RestCard(
                            position: 0,
                          ))),
                Expanded(
                    flex: 1,
                    child: Obx(() => controller.transactionList.length > 1
                        ? const TransactionBoard(
                            position: 1,
                          )
                        : const RestCard(position: 1))),
                Expanded(
                    flex: 1,
                    child: Obx(() => controller.transactionList.length > 2
                        ? const TransactionBoard(
                            position: 2,
                          )
                        : const RestCard(position: 2))),
              ],
            )),
        Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Obx(() => controller.transactionList.length > 3
                      ? const TransactionBoard(
                          position: 3,
                        )
                      : const RestCard(position: 3)),
                ),
                Expanded(
                  flex: 1,
                  child: Obx(() => controller.transactionList.length > 4
                      ? const TransactionBoard(
                          position: 4,
                        )
                      : const RestCard(position: 4)),
                ),
                const Expanded(flex: 1, child: MyAsset()),
              ],
            ))
      ],
    );
  }
}
