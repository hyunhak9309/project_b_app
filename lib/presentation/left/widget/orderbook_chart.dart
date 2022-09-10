import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_b/presentation/component/b_inkwell.dart';
import 'package:project_b/presentation/left/left_controller.dart';
import 'dart:math' as math;
import '../../component/b_text.dart';
import '../../component/drawBorder.dart';
import 'mongo_list_dialog.dart';
import 'orderbook_list_dialog.dart';

class OrderBookChart extends StatelessWidget {
  const OrderBookChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: DrawBorder(
            child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      BText('upBitInfo'.tr, 16),
                      BText('1s'.tr, 12),
                      const SizedBox(
                        width: 5,
                      ),
                      BText('-'.tr, 14),
                      const SizedBox(
                        width: 5,
                      ),
                      BText('one_to_five_ratio'.tr, 14)
                    ],
                  ),
                  BInkWell(
                    onTap: () {
                      Get.dialog(const OrderBookListDialog());
                    },
                    child: Transform.rotate(
                        angle: math.pi,
                        child: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Theme.of(context).indicatorColor,
                          size: 20,
                        )),
                  )
                ],
              ),
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
                child: Obx(
                  () => ListView.builder(
                      itemCount: LeftController
                          .to.analyzeOrderBook.value.oneToFiveAskBidRatio.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(3),
                          child: Row(children: [
                            BText('${index + 1}위', 14),
                            Expanded(
                              child: BText(
                                  LeftController
                                      .to
                                      .analyzeOrderBook.value.oneToFiveAskBidRatio[index]
                                      .market,
                                  14),
                            ),
                          ]),
                        );
                      }),
                ),
              ),
            ],
          ),
        )));
  }
}
