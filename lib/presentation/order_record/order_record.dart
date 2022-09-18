import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:project_b/presentation/component/b_inkwell.dart';
import 'package:project_b/presentation/component/kmb_text.dart';
import 'package:project_b/presentation/market/market_controller.dart';
import '../component/b_text.dart';
import 'order_record_controller.dart';

class OrderRecord extends GetView<OrderRecordController> {
  const OrderRecord({Key? key}) : super(key: key);
  final timeFlex = 2;
  final nameFlex = 2;
  final priceFlex = 2;
  final volumeFlex = 2;
  final tradeFlex = 1;
  final stateFlex = 1;
  final cancelFlex = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).indicatorColor, width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: BText('order_record'.tr, 16),
                    ),
                  ),
                  Row(
                    children: [
                      BInkWell(
                          onTap: controller.total.toggle,
                          child: Obx(() => BText(
                                'total_list'.tr,
                                14,
                                color: controller.total.value
                                    ? Colors.yellow
                                    : Theme.of(context).indicatorColor,
                              ))),
                      const SizedBox(
                        width: 10,
                      ),
                      BInkWell(
                        onTap: controller.total.toggle,
                        child: Obx(() => BText('waiting_list'.tr, 14,
                            color: controller.total.value
                                ? Theme.of(context).indicatorColor
                                : Colors.yellow)),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ],
              )),
          Container(
            height: 1,
            color: Theme.of(context).indicatorColor,
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                    flex: timeFlex, child: Center(child: BText('time'.tr, 14))),
                Expanded(
                    flex: nameFlex, child: Center(child: BText('coin'.tr, 14))),
                Expanded(
                    flex: priceFlex,
                    child: Center(child: BText('price'.tr, 14))),
                Expanded(
                    flex: volumeFlex,
                    child: Center(child: BText('volume'.tr, 14))),
                Expanded(
                    flex: tradeFlex,
                    child: Center(child: BText('trade'.tr, 14))),
                Expanded(
                    flex: stateFlex,
                    child: Center(child: BText('state'.tr, 14))),
                Expanded(flex: cancelFlex, child: Container()),
                const SizedBox(
                  width: 10,
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            color: Theme.of(context).indicatorColor,
          ),
          Expanded(
              flex: 14,
              child: Obx(() => Scrollbar(
                    controller: controller.scrollController,
                    thumbVisibility: true,
                    child: ListView.builder(
                        controller: controller.scrollController,
                        itemCount: controller.total.value
                            ? controller.orderRecord.value.totalRecord.length
                            : controller.orderRecord.value.waitingRecord.length,
                        itemBuilder: (context, index) {
                          final dataList = controller.total.value
                              ? controller.orderRecord.value.totalRecord
                              : controller.orderRecord.value.waitingRecord;
                          return Container(
                            margin: const EdgeInsets.fromLTRB(0, 2.5, 10, 2.5),
                            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: Row(
                              children: [
                                BText(
                                  (dataList.length - index).toString(),
                                  12,
                                  color: Colors.yellow,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  flex: timeFlex,
                                  child: Center(
                                    child: BText(
                                      DateFormat('MM/dd/HH:mm:ss')
                                          .format(DateTime.parse(
                                            dataList[index].createdAt,
                                          ).toLocal())
                                          .toString(),
                                      14,
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: nameFlex,
                                  child: Center(
                                    child: BText(
                                        MarketController.to.marketCode
                                            .where(
                                              (p0) =>
                                                  p0.market ==
                                                  dataList[index].market,
                                            )
                                            .toList()[0]
                                            .koreanName,
                                        14),
                                  ),
                                ),
                                Expanded(
                                    flex: priceFlex,
                                    child: Center(
                                      child: BText(
                                          "${dataList[index].price} ${'KRW'.tr}",
                                          14),
                                    )),
                                Expanded(
                                    flex: volumeFlex,
                                    child: Center(
                                      child: KMBText(
                                          double.parse(
                                            dataList[index].volume,
                                          ),
                                          14),
                                    )),
                                Expanded(
                                    flex: tradeFlex,
                                    child: Center(
                                      child: BText(
                                        dataList[index].side.tr,
                                        14,
                                        color:
                                            dataList[index].side.tr == 'bid'.tr
                                                ? Colors.red
                                                : Colors.blue,
                                      ),
                                    )),
                                Expanded(
                                    flex: stateFlex,
                                    child: Center(
                                      child: BText(
                                        dataList[index].state.tr,
                                        14,
                                        color: dataList[index].state.tr ==
                                                'wait'.tr
                                            ? Colors.yellow
                                            : Colors.green,
                                      ),
                                    )),
                                Expanded(
                                  flex: cancelFlex,
                                  child: dataList[index].state.tr == 'wait'.tr
                                      ? Center(
                                          child: BInkWell(
                                            onTap: () {
                                              controller.deleteOrder(
                                                  dataList[index].uuid);
                                            },
                                            child: Container(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 2.5, 10, 2.5),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Theme.of(context)
                                                            .indicatorColor,
                                                        width: 0.5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: BText('cancel'.tr, 12)),
                                          ),
                                        )
                                      : Container(),
                                )
                              ],
                            ),
                          );
                        }),
                  ))),
        ],
      ),
    );
  }
}
