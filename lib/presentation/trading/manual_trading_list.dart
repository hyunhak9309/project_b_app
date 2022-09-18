import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_b/presentation/core_controller.dart';
import 'package:project_b/presentation/trading/manual_trading_list_controller.dart';
import '../../data/data_source/mongo_db.dart';
import '../../data/data_source/up_bit_server.dart';
import '../../data/repository/up_bit_repository_impl.dart';
import '../../data/repository/mongo_repository_impl.dart';
import '../../domain/use_case/use_case_order_record.dart';
import '../../domain/use_case/use_case_transaction.dart';
import '../../domain/use_case/use_case_market.dart';
import 'transaction_controller.dart';
import '../component/b_inkwell.dart';
import '../component/b_text.dart';
import '../component/drawBorder.dart';

class ManualTradingList extends GetView<ManualTradingListController> {
  const ManualTradingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => DrawBorder(
            child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            BText('manual_list'.tr, 16),
            const SizedBox(
              height: 5,
            ),
            Container(
              color: Theme.of(context).indicatorColor,
              height: 1,
              width: double.infinity,
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: controller.transactionList.isEmpty
                  ? Center(
                      child: BText(
                        'wait_coin_select'.tr,
                        16,
                        height: 1.5,
                      ),
                    )
                  : Scrollbar(
                      controller: controller.scrollController,
                      thumbVisibility: true,
                      child: ListView.builder(
                          controller: controller.scrollController,
                          itemCount: controller.transactionList.length,
                          shrinkWrap: false,
                          itemBuilder: (context, index) {
                            final c = Get.put<TransactionController>(TransactionController(
                                market: controller.transactionList[index],
                                getUseCaseTransaction: UseCaseTransaction(
                                    repository: UpBitRepositoryImpl(server: UpBitServer()),),
                                getUseCaseOrderRecord:
                                UseCaseOrderRecord(repository: MongoRepositoryImpl(db: MyDB())),
                                getUseCaseUpBit: UseCaseMarket(
                                    repository: UpBitRepositoryImpl(server: UpBitServer()))),
                                tag: controller.transactionList[index].koreanName,
                                permanent: true);
                            return Container(
                              height: 48,
                              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Theme.of(context).indicatorColor, width: 1),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex : 1,
                                    child: Obx(() => BText(
                                        controller.transactionList[index ].koreanName,
                                        14)),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Obx(() => BText('tradePrice'.tr + c.coinPrice.toString() + 'KRW'.tr, 12)),
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
                                                CoreController.to.allTransactionStatus.value
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
                                                !CoreController
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
                                                tag: controller.transactionList[index].koreanName,
                                                force: true);
                                            controller.transactionList.removeAt(index);
                                          },
                                          child: const Icon(Icons.delete, size: 20)),
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
            )
          ],
        )));
  }
}
