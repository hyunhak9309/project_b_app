import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:project_b/data/data_source/mongo_db.dart';
import 'package:project_b/data/data_source/up_bit_server.dart';
import 'package:project_b/data/repository/center/order_repository_impl.dart';
import 'package:project_b/data/repository/center/record_repository_impl.dart';
import 'package:project_b/domain/use_case/center/use_case_record.dart';
import 'package:project_b/domain/use_case/center/use_case_transaction.dart';
import 'package:project_b/presentation/center/home_controller.dart';
import 'package:project_b/presentation/center/widget/transaction_controller.dart';
import 'package:project_b/presentation/component/b_inkwell.dart';
import 'package:project_b/presentation/component/decimal_text.dart';
import 'package:project_b/presentation/component/kmb_text.dart';
import '../../component/b_text.dart';

class TransactionBoard extends StatelessWidget {
  const TransactionBoard({required this.position, Key? key}) : super(key: key);
  final int position;

  @override
  Widget build(BuildContext context) {
    var c = Get.put(
        TransactionController(
            market: HomeController.to.transactionList[position],
            position: position,
            getUseCaseTransaction: UseCaseTransaction(
                repository: OrderRepositoryImpl(server: UpBitServer())),
            getUseCaseRecord:
                UseCaseRecord(repository: RecordRepositoryImpl(db: MyDB()))),
        tag: HomeController.to.transactionList[position],
        permanent: true);
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
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Obx(() => HomeController.to.transactionList.length >
                                position
                            ? BText(
                                HomeController.to.transactionList[position], 16)
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
                                      : Theme.of(context).indicatorColor,
                                  size: 20,
                                ))),
                        const SizedBox(
                          width: 5,
                        ),
                        BInkWell(
                            onTap: () {
                              c.transactionStatus.value = false;
                            },
                            child: Obx(() => Icon(
                                  Icons.pause,
                                  color: !c.transactionStatus.value ||
                                          !HomeController
                                              .to.allTransactionStatus.value
                                      ? Colors.green
                                      : Theme.of(context).indicatorColor,
                                  size: 20,
                                ))),
                        const SizedBox(
                          width: 5,
                        ),
                        BInkWell(
                            onTap: () {
                              Get.delete<TransactionController>(
                                  tag: HomeController
                                      .to.transactionList[position],
                                  force: true);
                              HomeController.to.transactionList
                                  .removeAt(position);
                            },
                            child: const Icon(Icons.delete, size: 20)),
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
              flex: 12,
              child: Obx(() => ListView.builder(
                  // reverse: true,
                  itemCount: c.orderRecord.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).indicatorColor,
                              width: 0.5)),
                      margin: const EdgeInsets.all(2),
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: BText(
                                DateFormat('HH:mm:ss')
                                    .format(DateTime.parse(
                                            c.orderRecord[index].createdAt)
                                        .toLocal())
                                    .toString(),
                                14),
                          ),
                          Expanded(
                              flex: 3,
                              child: Center(
                                child: BText(
                                    c.orderRecord[index].price + 'KRW'.tr, 14),
                              )),
                          Expanded(
                              flex: 3,
                              child: Center(
                                child: BText(
                                    double.parse(c.orderRecord[index].volume)
                                        .toStringAsFixed(5),
                                    14),
                              )),
                          Expanded(
                              flex: 1,
                              child: BText(
                                c.orderRecord[index].side.tr,
                                14,
                                color: c.orderRecord[index].side.tr == 'bid'.tr
                                    ? Colors.red
                                    : Colors.blue,
                              )),
                          Expanded(
                              flex: 1,
                              child: BText(
                                c.orderRecord[index].state.tr,
                                14,
                                color:
                                    c.orderRecord[index].state.tr == 'wait'.tr
                                        ? Colors.yellow
                                        : Colors.green,
                              )),
                          Expanded(
                            flex: 1,
                            child: c.orderRecord[index].state.tr == 'wait'.tr
                                ? Container(
                                    padding: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Theme.of(context)
                                                .indicatorColor,
                                            width: 0.5),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: BText('cancel'.tr, 12))
                                : Container(),
                          )
                        ],
                      ),
                    );
                  }))),
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
        ],
      ),
    );
  }
}
