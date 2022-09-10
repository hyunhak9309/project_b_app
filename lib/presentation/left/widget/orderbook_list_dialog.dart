import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';
import 'package:project_b/data/entity/upbit/entity_current_info.dart';
import 'package:project_b/domain/model/model_2nd_current_info.dart';
import 'package:project_b/presentation/component/b_inkwell.dart';
import 'package:project_b/presentation/component/decimal_text.dart';
import 'package:project_b/presentation/component/drawBorder.dart';
import 'package:project_b/presentation/left/left_controller.dart';
import '../../../main.dart';
import '../../center/home_controller.dart';
import '../../component/b_text.dart';
import '../../component/kmb_text.dart';
import '../../component/toast_widget.dart';

class OrderBookListDialog extends StatelessWidget {
  const OrderBookListDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = 0
        .obs; // 0 : 1-5호가 매수/매도 비율, 1: 매수/매도비율, 2: 현재가, 3:매수 총량 대비 1-5호가 비율(bid),
    // 4: 매도 총량 대비 1-5호가 비율(ask), 5: 코인 이름 순
    var rankingFlex = 1;
    var coinFlex = 2;
    var tradePriceFlex = 2;
    var askBidRatioFlex = 2;
    var oneToFiveAskBidRatioFlex = 3;
    var oneToFiveAskRatioFlex = 3;
    var oneToFiveBidRatioFlex = 3;
    var selectFlex = 1;

    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(20)),
        width: Get.width * 0.9,
        height: Get.height * 0.9,
        child: Material(
          child: Scaffold(
            body: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(flex: rankingFlex, child: BText('ranking'.tr, 16)),
                    Expanded(
                        flex: coinFlex,
                        child: BInkWell(
                            onTap: () {
                              state.value = 5;
                            },
                            child: Center(
                              child: Obx(
                                () => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      BText('coin'.tr, 16),
                                      if (state.value == 5)
                                        const BText(
                                          ' *',
                                          18,
                                          color: Colors.yellow,
                                        ),
                                    ]),
                              ),
                            ))),
                    Expanded(
                        flex: tradePriceFlex,
                        child: BInkWell(
                            onTap: () {
                              state.value = 2;
                            },
                            child: Center(
                              child: Obx(
                                () => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      BText('trade_price'.tr, 16),
                                      if (state.value == 2)
                                        const BText(
                                          ' *',
                                          18,
                                          color: Colors.yellow,
                                        ),
                                    ]),
                              ),
                            ))),
                    Expanded(
                        flex: askBidRatioFlex,
                        child: BInkWell(
                            onTap: () {
                              state.value = 1;
                            },
                            child: Center(
                              child: Obx(
                                () => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      BText('ask_bid_ratio'.tr, 16),
                                      if (state.value == 1)
                                        const BText(
                                          ' *',
                                          18,
                                          color: Colors.yellow,
                                        ),
                                    ]),
                              ),
                            ))),
                    Expanded(
                        flex: oneToFiveAskBidRatioFlex,
                        child: BInkWell(
                            onTap: () {
                              state.value = 0;
                            },
                            child: Center(
                              child: Obx(
                                () => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      BText('1_5_ask_bid_ratio'.tr, 16),
                                      if (state.value == 0)
                                        const BText(
                                          ' *',
                                          18,
                                          color: Colors.yellow,
                                        ),
                                    ]),
                              ),
                            ))),
                    Expanded(
                        flex: oneToFiveBidRatioFlex,
                        child: BInkWell(
                            onTap: () {
                              state.value = 3;
                            },
                            child: Center(
                              child: Obx(
                                () => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      BText('1-5_bid_ratio'.tr, 16),
                                      if (state.value == 3)
                                        const BText(
                                          ' *',
                                          18,
                                          color: Colors.yellow,
                                        ),
                                    ]),
                              ),
                            ))),
                    Expanded(
                        flex: oneToFiveAskRatioFlex,
                        child: BInkWell(
                            onTap: () {
                              state.value = 4;
                            },
                            child: Center(
                              child: Obx(
                                () => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      BText('1_5_ask_ratio'.tr, 16),
                                      if (state.value == 4)
                                        const BText(
                                          ' *',
                                          18,
                                          color: Colors.yellow,
                                        ),
                                    ]),
                              ),
                            ))),
                    Expanded(flex: selectFlex, child: Container()),
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
                        itemCount: state.value == 0
                            ? LeftController.to.analyzeOrderBook.value
                                .oneToFiveAskBidRatio.length
                            : state.value == 1
                                ? LeftController.to.analyzeOrderBook.value
                                    .askBidRatio.length
                                : state.value == 2
                                    ? LeftController.to.analyzeOrderBook.value
                                        .tradePrice.length
                                    : state.value == 3
                                        ? LeftController
                                            .to
                                            .analyzeOrderBook
                                            .value
                                            .oneToFiveOfTotalBidRatio
                                            .length
                                        : state.value == 4
                                            ? LeftController
                                                .to
                                                .analyzeOrderBook
                                                .value
                                                .oneToFiveOfTotalAskRatio
                                                .length
                                            : LeftController.to.analyzeOrderBook
                                                .value.market.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Row(children: [
                              Expanded(
                                  flex: rankingFlex,
                                  child: BText('${index + 1}위', 14)),
                              Expanded(
                                  flex: coinFlex,
                                  child: BText(
                                      state.value == 0
                                          ? LeftController
                                              .to
                                              .analyzeOrderBook
                                              .value
                                              .oneToFiveAskBidRatio[index]
                                              .market
                                          : state.value == 1
                                              ? LeftController
                                                  .to
                                                  .analyzeOrderBook
                                                  .value
                                                  .askBidRatio[index]
                                                  .market
                                              : state.value == 2
                                                  ? LeftController
                                                      .to
                                                      .analyzeOrderBook
                                                      .value
                                                      .tradePrice[index]
                                                      .market
                                                  : state.value == 3
                                                      ? LeftController
                                                          .to
                                                          .analyzeOrderBook
                                                          .value
                                                          .oneToFiveOfTotalBidRatio[
                                                              index]
                                                          .market
                                                      : state.value == 4
                                                          ? LeftController
                                                              .to
                                                              .analyzeOrderBook
                                                              .value
                                                              .oneToFiveOfTotalAskRatio[
                                                                  index]
                                                              .market
                                                          : LeftController
                                                              .to
                                                              .analyzeOrderBook
                                                              .value
                                                              .market[index]
                                                              .market,
                                      14)),
                              Expanded(
                                  flex: tradePriceFlex,
                                  child: BText(
                                      (state.value == 0
                                          ? LeftController
                                              .to
                                              .analyzeOrderBook
                                              .value
                                              .oneToFiveAskBidRatio[index]
                                              .tradePrice
                                              .toString()
                                          : state.value == 1
                                              ? LeftController
                                                  .to
                                                  .analyzeOrderBook
                                                  .value
                                                  .askBidRatio[index]
                                                  .tradePrice
                                                  .toString()
                                              : state.value == 2
                                                  ? LeftController
                                                      .to
                                                      .analyzeOrderBook
                                                      .value
                                                      .tradePrice[index]
                                                      .tradePrice
                                                      .toString()
                                                  : state.value == 3
                                                      ? LeftController
                                                          .to
                                                          .analyzeOrderBook
                                                          .value
                                                          .oneToFiveOfTotalBidRatio[
                                                              index]
                                                          .tradePrice
                                                          .toString()
                                                      : state.value == 4
                                                          ? LeftController
                                                              .to
                                                              .analyzeOrderBook
                                                              .value
                                                              .oneToFiveOfTotalAskRatio[
                                                                  index]
                                                              .tradePrice
                                                              .toString()
                                                          : LeftController
                                                              .to
                                                              .analyzeOrderBook
                                                              .value
                                                              .market[index]
                                                              .tradePrice
                                                              .toString()),
                                      14)),
                              Expanded(
                                  flex: askBidRatioFlex,
                                  child: DecimalText(
                                    (state.value == 0
                                        ? LeftController
                                            .to
                                            .analyzeOrderBook
                                            .value
                                            .oneToFiveAskBidRatio[index]
                                            .askBidRatio
                                        : state.value == 1
                                            ? LeftController
                                                .to
                                                .analyzeOrderBook
                                                .value
                                                .askBidRatio[index]
                                                .askBidRatio
                                            : state.value == 2
                                                ? LeftController
                                                    .to
                                                    .analyzeOrderBook
                                                    .value
                                                    .tradePrice[index]
                                                    .askBidRatio
                                                : state.value == 3
                                                    ? LeftController
                                                        .to
                                                        .analyzeOrderBook
                                                        .value
                                                        .oneToFiveOfTotalBidRatio[
                                                            index]
                                                        .askBidRatio
                                                    : state.value == 4
                                                        ? LeftController
                                                            .to
                                                            .analyzeOrderBook
                                                            .value
                                                            .oneToFiveOfTotalAskRatio[
                                                                index]
                                                            .askBidRatio
                                                        : LeftController
                                                            .to
                                                            .analyzeOrderBook
                                                            .value
                                                            .market[index]
                                                            .askBidRatio),
                                    14,
                                    unit: '%',
                                    rounds: true,
                                  )),
                              Expanded(
                                  flex: oneToFiveAskBidRatioFlex,
                                  child: DecimalText(
                                    (state.value == 0
                                        ? LeftController
                                            .to
                                            .analyzeOrderBook
                                            .value
                                            .oneToFiveAskBidRatio[index]
                                            .oneToFiveAskBidRatio
                                        : state.value == 1
                                            ? LeftController
                                                .to
                                                .analyzeOrderBook
                                                .value
                                                .askBidRatio[index]
                                                .oneToFiveAskBidRatio
                                            : state.value == 2
                                                ? LeftController
                                                    .to
                                                    .analyzeOrderBook
                                                    .value
                                                    .tradePrice[index]
                                                    .oneToFiveAskBidRatio
                                                : state.value == 3
                                                    ? LeftController
                                                        .to
                                                        .analyzeOrderBook
                                                        .value
                                                        .oneToFiveOfTotalBidRatio[
                                                            index]
                                                        .oneToFiveAskBidRatio
                                                    : state.value == 4
                                                        ? LeftController
                                                            .to
                                                            .analyzeOrderBook
                                                            .value
                                                            .oneToFiveOfTotalAskRatio[
                                                                index]
                                                            .oneToFiveAskBidRatio
                                                        : LeftController
                                                            .to
                                                            .analyzeOrderBook
                                                            .value
                                                            .market[index]
                                                            .oneToFiveAskBidRatio),
                                    14,
                                    unit: '%',
                                    rounds: true,
                                  )),
                              Expanded(
                                  flex: oneToFiveBidRatioFlex,
                                  child: DecimalText(
                                    (state.value == 0
                                        ? LeftController
                                            .to
                                            .analyzeOrderBook
                                            .value
                                            .oneToFiveAskBidRatio[index]
                                            .oneToFiveOfTotalBidRatio
                                        : state.value == 1
                                            ? LeftController
                                                .to
                                                .analyzeOrderBook
                                                .value
                                                .askBidRatio[index]
                                                .oneToFiveOfTotalBidRatio
                                            : state.value == 2
                                                ? LeftController
                                                    .to
                                                    .analyzeOrderBook
                                                    .value
                                                    .tradePrice[index]
                                                    .oneToFiveOfTotalBidRatio
                                                : state.value == 3
                                                    ? LeftController
                                                        .to
                                                        .analyzeOrderBook
                                                        .value
                                                        .oneToFiveOfTotalBidRatio[
                                                            index]
                                                        .oneToFiveOfTotalBidRatio
                                                    : state.value == 4
                                                        ? LeftController
                                                            .to
                                                            .analyzeOrderBook
                                                            .value
                                                            .oneToFiveOfTotalAskRatio[
                                                                index]
                                                            .oneToFiveOfTotalBidRatio
                                                        : LeftController
                                                            .to
                                                            .analyzeOrderBook
                                                            .value
                                                            .market[index]
                                                            .oneToFiveOfTotalBidRatio),
                                    14,
                                    unit: '%',
                                    rounds: true,
                                  )),
                              Expanded(
                                  flex: oneToFiveAskRatioFlex,
                                  child: DecimalText(
                                    (state.value == 0
                                        ? LeftController
                                            .to
                                            .analyzeOrderBook
                                            .value
                                            .oneToFiveAskBidRatio[index]
                                            .oneToFiveOfTotalAskRatio
                                        : state.value == 1
                                            ? LeftController
                                                .to
                                                .analyzeOrderBook
                                                .value
                                                .askBidRatio[index]
                                                .oneToFiveOfTotalAskRatio
                                            : state.value == 2
                                                ? LeftController
                                                    .to
                                                    .analyzeOrderBook
                                                    .value
                                                    .tradePrice[index]
                                                    .oneToFiveOfTotalAskRatio
                                                : state.value == 3
                                                    ? LeftController
                                                        .to
                                                        .analyzeOrderBook
                                                        .value
                                                        .oneToFiveOfTotalBidRatio[
                                                            index]
                                                        .oneToFiveOfTotalAskRatio
                                                    : state.value == 4
                                                        ? LeftController
                                                            .to
                                                            .analyzeOrderBook
                                                            .value
                                                            .oneToFiveOfTotalAskRatio[
                                                                index]
                                                            .oneToFiveOfTotalAskRatio
                                                        : LeftController
                                                            .to
                                                            .analyzeOrderBook
                                                            .value
                                                            .market[index]
                                                            .oneToFiveOfTotalAskRatio),
                                    14,
                                    unit: '%',
                                    rounds: true,
                                  )),
                              Expanded(
                                  flex: selectFlex,
                                  child: BInkWell(
                                    onTap: () {
                                      var marketName = state.value == 0
                                          ? LeftController.to.mongoData.value
                                              .accTradeVolume[index].market
                                          : state.value == 1
                                              ? LeftController
                                                  .to
                                                  .mongoData
                                                  .value
                                                  .signedChangeRate[index]
                                                  .market
                                              : state.value == 2
                                                  ? LeftController
                                                      .to
                                                      .mongoData
                                                      .value
                                                      .tradePrice[index]
                                                      .market
                                                  : state.value == 3
                                                      ? LeftController
                                                          .to
                                                          .mongoData
                                                          .value
                                                          .signedChangePrice[
                                                              index]
                                                          .market
                                                      : state.value == 4
                                                          ? LeftController
                                                              .to
                                                              .mongoData
                                                              .value
                                                              .accTradePrice[
                                                                  index]
                                                              .market
                                                          : LeftController
                                                              .to
                                                              .mongoData
                                                              .value
                                                              .market[index]
                                                              .market;

                                      if (!HomeController.to.transactionList
                                          .contains(marketName)) {
                                        if (HomeController
                                                .to.transactionList.length <
                                            2) {
                                          HomeController.to.transactionList
                                              .add(marketName);
                                        } else {
                                          showToastWidget(ToastWidget(
                                              text: 'max_transaction'.tr));
                                        }
                                      } else {
                                        showToastWidget(ToastWidget(
                                            text: 'already_exist'.tr));
                                      }
                                    },
                                    child: DrawBorder(
                                      child: BText('select'.tr, 14),
                                    ),
                                  )),
                            ]),
                          );
                        }),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
