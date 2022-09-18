import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';
import 'package:project_b/presentation/component/b_inkwell.dart';
import 'package:project_b/presentation/component/decimal_text.dart';
import 'package:project_b/presentation/component/drawBorder.dart';
import 'package:project_b/presentation/market/market_controller.dart';

import '../component/b_text.dart';
import '../component/kmb_text.dart';
import '../component/toast_widget.dart';
import '../trading/manual_trading_list_controller.dart';

class MongoListDialog extends StatelessWidget {
  const MongoListDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state =
        0.obs; // 0 : 누적 거래량, 1: 변화율, 2: 현재가, 3:변화액, 4: 누적 거래대금, 5: 마켓 이름 순
    const rankingFlex = 1;
    const coinFlex = 2;
    const tradePriceFlex = 2;
    const changeRateFlex = 2;
    const changePriceFlex = 2;
    const accTradeVolumeFlex = 2;
    const accTradePriceFlex = 2;
    const selectFlex = 1;

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
                        flex: changeRateFlex,
                        child: BInkWell(
                            onTap: () {
                              state.value = 1;
                            },
                            child: Center(
                              child: Obx(
                                () => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      BText('change_rate_1m'.tr, 16),
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
                        flex: changePriceFlex,
                        child: BInkWell(
                            onTap: () {
                              state.value = 3;
                            },
                            child: Center(
                              child: Obx(
                                () => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      BText('change_price_1m'.tr, 16),
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
                        flex: accTradeVolumeFlex,
                        child: BInkWell(
                            onTap: () {
                              state.value = 0;
                            },
                            child: Center(
                              child: Obx(
                                () => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      BText('trade_volume_1m'.tr, 16),
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
                        flex: accTradePriceFlex,
                        child: BInkWell(
                            onTap: () {
                              state.value = 4;
                            },
                            child: Center(
                              child: Obx(
                                () => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      BText('trade_amount_1m'.tr, 16),
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
                            ? MarketController
                                .to.mongoData.value.accTradeVolume.length
                            : state.value == 1
                                ? MarketController
                                    .to.mongoData.value.signedChangeRate.length
                                : state.value == 2
                                    ? MarketController
                                        .to.mongoData.value.tradePrice.length
                                    : state.value == 3
                                        ? MarketController.to.mongoData.value
                                            .signedChangePrice.length
                                        : state.value == 4
                                            ? MarketController.to.mongoData.value
                                                .accTradePrice.length
                                            : MarketController.to.mongoData.value
                                                .market.length,
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
                                          ? MarketController.to.mongoData.value
                                              .accTradeVolume[index].market
                                          : state.value == 1
                                              ? MarketController
                                                  .to
                                                  .mongoData
                                                  .value
                                                  .signedChangeRate[index]
                                                  .market
                                              : state.value == 2
                                                  ? MarketController
                                                      .to
                                                      .mongoData
                                                      .value
                                                      .tradePrice[index]
                                                      .market
                                                  : state.value == 3
                                                      ? MarketController
                                                          .to
                                                          .mongoData
                                                          .value
                                                          .signedChangePrice[
                                                              index]
                                                          .market
                                                      : state.value == 4
                                                          ? MarketController
                                                              .to
                                                              .mongoData
                                                              .value
                                                              .accTradePrice[
                                                                  index]
                                                              .market
                                                          : MarketController
                                                              .to
                                                              .mongoData
                                                              .value
                                                              .market[index]
                                                              .market,
                                      14)),
                              Expanded(
                                  flex: tradePriceFlex,
                                  child: BText(
                                      (state.value == 0
                                          ? MarketController.to.mongoData.value
                                              .accTradeVolume[index].tradePrice
                                              .toString()
                                          : state.value == 1
                                              ? MarketController
                                                  .to
                                                  .mongoData
                                                  .value
                                                  .signedChangeRate[index]
                                                  .tradePrice
                                                  .toString()
                                              : state.value == 2
                                                  ? MarketController
                                                      .to
                                                      .mongoData
                                                      .value
                                                      .tradePrice[index]
                                                      .tradePrice
                                                      .toString()
                                                  : state.value == 3
                                                      ? MarketController
                                                          .to
                                                          .mongoData
                                                          .value
                                                          .signedChangePrice[
                                                              index]
                                                          .tradePrice
                                                          .toString()
                                                      : state.value == 4
                                                          ? MarketController
                                                              .to
                                                              .mongoData
                                                              .value
                                                              .accTradePrice[
                                                                  index]
                                                              .tradePrice
                                                              .toString()
                                                          : MarketController
                                                              .to
                                                              .mongoData
                                                              .value
                                                              .market[index]
                                                              .tradePrice
                                                              .toString()),
                                      14)),
                              Expanded(
                                  flex: changeRateFlex,
                                  child: DecimalText(
                                    (state.value == 0
                                        ? MarketController
                                            .to
                                            .mongoData
                                            .value
                                            .accTradeVolume[index]
                                            .signedChangeRate
                                        : state.value == 1
                                            ? MarketController
                                                .to
                                                .mongoData
                                                .value
                                                .signedChangeRate[index]
                                                .signedChangeRate
                                            : state.value == 2
                                                ? MarketController
                                                    .to
                                                    .mongoData
                                                    .value
                                                    .tradePrice[index]
                                                    .signedChangeRate
                                                : state.value == 3
                                                    ? MarketController
                                                        .to
                                                        .mongoData
                                                        .value
                                                        .signedChangePrice[
                                                            index]
                                                        .signedChangeRate
                                                    : state.value == 4
                                                        ? MarketController
                                                            .to
                                                            .mongoData
                                                            .value
                                                            .accTradePrice[
                                                                index]
                                                            .signedChangeRate
                                                        : MarketController
                                                            .to
                                                            .mongoData
                                                            .value
                                                            .market[index]
                                                            .signedChangeRate),
                                    14,
                                    unit: '%',
                                    rounds: true,
                                  )),
                              Expanded(
                                  flex: changePriceFlex,
                                  child: DecimalText(
                                    (state.value == 0
                                        ? MarketController
                                            .to
                                            .mongoData
                                            .value
                                            .accTradeVolume[index]
                                            .signedChangePrice
                                        : state.value == 1
                                            ? MarketController
                                                .to
                                                .mongoData
                                                .value
                                                .signedChangeRate[index]
                                                .signedChangePrice
                                            : state.value == 2
                                                ? MarketController
                                                    .to
                                                    .mongoData
                                                    .value
                                                    .tradePrice[index]
                                                    .signedChangePrice
                                                : state.value == 3
                                                    ? MarketController
                                                        .to
                                                        .mongoData
                                                        .value
                                                        .signedChangePrice[
                                                            index]
                                                        .signedChangePrice
                                                    : state.value == 4
                                                        ? MarketController
                                                            .to
                                                            .mongoData
                                                            .value
                                                            .accTradePrice[
                                                                index]
                                                            .signedChangePrice
                                                        : MarketController
                                                            .to
                                                            .mongoData
                                                            .value
                                                            .market[index]
                                                            .signedChangePrice),
                                    14,
                                    unit: 'KRW'.tr,
                                    rounds: true,
                                    position: 5,
                                  )),
                              Expanded(
                                  flex: accTradeVolumeFlex,
                                  child: KMBText(
                                      (state.value == 0
                                          ? MarketController
                                              .to
                                              .mongoData
                                              .value
                                              .accTradeVolume[index]
                                              .accTradeVolume
                                          : state.value == 1
                                              ? MarketController
                                                  .to
                                                  .mongoData
                                                  .value
                                                  .signedChangeRate[index]
                                                  .accTradeVolume
                                              : state.value == 2
                                                  ? MarketController
                                                      .to
                                                      .mongoData
                                                      .value
                                                      .tradePrice[index]
                                                      .accTradeVolume
                                                  : state.value == 3
                                                      ? MarketController
                                                          .to
                                                          .mongoData
                                                          .value
                                                          .signedChangePrice[
                                                              index]
                                                          .accTradeVolume
                                                      : state.value == 4
                                                          ? MarketController
                                                              .to
                                                              .mongoData
                                                              .value
                                                              .accTradePrice[
                                                                  index]
                                                              .accTradeVolume
                                                          : MarketController
                                                              .to
                                                              .mongoData
                                                              .value
                                                              .market[index]
                                                              .accTradeVolume),
                                      14)),
                              Expanded(
                                  flex: accTradePriceFlex,
                                  child: KMBText(
                                      (state.value == 0
                                          ? MarketController
                                              .to
                                              .mongoData
                                              .value
                                              .accTradeVolume[index]
                                              .accTradePrice
                                          : state.value == 1
                                              ? MarketController
                                                  .to
                                                  .mongoData
                                                  .value
                                                  .signedChangeRate[index]
                                                  .accTradePrice
                                              : state.value == 2
                                                  ? MarketController
                                                      .to
                                                      .mongoData
                                                      .value
                                                      .tradePrice[index]
                                                      .accTradePrice
                                                  : state.value == 3
                                                      ? MarketController
                                                          .to
                                                          .mongoData
                                                          .value
                                                          .signedChangePrice[
                                                              index]
                                                          .accTradePrice
                                                      : state.value == 4
                                                          ? MarketController
                                                              .to
                                                              .mongoData
                                                              .value
                                                              .accTradePrice[
                                                                  index]
                                                              .accTradePrice
                                                          : MarketController
                                                              .to
                                                              .mongoData
                                                              .value
                                                              .market[index]
                                                              .accTradePrice),
                                      14)),
                              Expanded(
                                  flex: selectFlex,
                                  child: BInkWell(
                                    onTap: () {
                                      var market = state.value == 0
                                          ? MarketController.to.mongoData.value
                                              .accTradeVolume[index].market
                                          : state.value == 1
                                              ? MarketController
                                                  .to
                                                  .mongoData
                                                  .value
                                                  .signedChangeRate[index]
                                                  .market
                                              : state.value == 2
                                                  ? MarketController
                                                      .to
                                                      .mongoData
                                                      .value
                                                      .tradePrice[index]
                                                      .market
                                                  : state.value == 3
                                                      ? MarketController
                                                          .to
                                                          .mongoData
                                                          .value
                                                          .signedChangePrice[
                                                              index]
                                                          .market
                                                      : state.value == 4
                                                          ? MarketController
                                                              .to
                                                              .mongoData
                                                              .value
                                                              .accTradePrice[
                                                                  index]
                                                              .market
                                                          : MarketController
                                                              .to
                                                              .mongoData
                                                              .value
                                                              .market[index]
                                                              .market;
                                      var marketInfo = MarketController.to.marketCode.where((p0) => p0.koreanName == market).toList()[0];

                                      if (! ManualTradingListController.to.transactionList
                                          .contains(marketInfo)) {
                                        if ( ManualTradingListController
                                                .to.transactionList.length <
                                            5) {
                                          ManualTradingListController.to.transactionList
                                              .add(marketInfo);
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
