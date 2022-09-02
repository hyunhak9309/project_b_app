import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_b/presentation/center/home_controller.dart';
import 'package:project_b/presentation/center/widget/transaction_controller.dart';
import 'package:project_b/presentation/component/b_inkwell.dart';
import 'package:project_b/presentation/component/decimal_text.dart';
import 'package:project_b/presentation/component/kmb_text.dart';
import 'package:uuid/uuid.dart';

import '../../component/b_text.dart';
import 'coin_name.dart';

class TransactionBoard extends StatelessWidget {
  const TransactionBoard({required this.position, Key? key}) : super(key: key);
  final int position;

  @override
  Widget build(BuildContext context) {
    var c = Get.put(TransactionController(), tag: const Uuid().v4());
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).indicatorColor, width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Obx(() => BText(
                        HomeController.to.transactionStatus[position]
                            ? 'auto'.tr
                            : 'manual'.tr,
                        14)),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Obx(() => HomeController.to.transactionList.length >
                                position
                            ? CoinName(
                                market:
                                    HomeController.to.transactionList[position])
                            : Container()),
                        const SizedBox(
                          width: 5,
                        ),
                        Obx(() => HomeController.to.transactionRatio.length >
                                position
                            ? BText(
                                '(${HomeController.to.transactionRatio[position]}%)',
                                12)
                            : Container()),
                      ],
                    ),
                    Row(
                      children: [
                        BInkWell(
                            onTap: () {
                              c.transactionStatus.value = true;
                            },
                            child: Obx(() => Icon(
                                  Icons.play_arrow,
                                  color: c.transactionStatus.value &&
                                          HomeController
                                              .to.allTransactionStatus.value
                                      ? Colors.green
                                      : Theme.of(context).indicatorColor, size: 20,
                                ))),
                        const SizedBox(
                          width: 5,
                        ),
                        BInkWell(
                            onTap: () {
                              c.transactionStatus.value = false;
                            },
                            child: Obx(() => Icon(Icons.pause,
                                color: !c.transactionStatus.value ||
                                        !HomeController
                                            .to.allTransactionStatus.value
                                    ? Colors.green
                                    : Theme.of(context).indicatorColor, size: 20,))),
                        const SizedBox(
                          width: 5,
                        ),
                        BInkWell(onTap: () {}, child: const Icon(Icons.delete, size: 20)),
                      ],
                    )
                  ],
                ),
              )),
          Container(
            height: 1,
            color: Theme.of(context).indicatorColor,
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BText('${'revenue'.tr} : ', 14),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Obx(() => KMBText(
                              c.revenue.value,
                              16,
                              color: c.revenue > 0 ? Colors.red : Colors.blue,
                            )),
                        BText('KRW'.tr, 12),
                        const SizedBox(
                          width: 5,
                        ),
                        const BText('(', 14),
                        Obx(() => DecimalText(
                              c.rateOfReturn.value,
                              14,
                            )),
                        const BText('%', 12),
                        const BText(')', 14),
                      ],
                    )
                  ],
                ),
              )),
          Container(
            height: 1,
            color: Theme.of(context).indicatorColor,
          ),
          Expanded(flex: 8, child: Container()),
        ],
      ),
    );
  }
}
