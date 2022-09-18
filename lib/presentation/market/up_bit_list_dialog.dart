import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oktoast/oktoast.dart';
import 'package:project_b/presentation/component/b_inkwell.dart';
import 'package:project_b/presentation/component/decimal_text.dart';
import 'package:project_b/presentation/component/toast_widget.dart';
import 'package:project_b/presentation/market/market_controller.dart';
import '../component/b_text.dart';
import '../component/drawBorder.dart';
import '../component/kmb_text.dart';
import '../trading/manual_trading_list_controller.dart';

class UpBitListDialog extends StatelessWidget {
  const UpBitListDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = 0
        .obs; // 0: 일거래량, 1: 전일대비 증가율, 2: 현재가, 3:고가 4:저가, 5: 변화액, 6: 누적거래대금 7: 마켓 이름 순
    const rankingFlex = 1;
    const coinFlex = 2;
    const tradePriceFlex = 2;
    const highPriceFlex = 2;
    const lowPriceFlex = 2;
    const changeRateFlex = 2;
    const changePriceFlex = 2;
    const tradeVolume24hFlex = 2;
    const tradeAmount24hFlex = 2;
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
                              state.value = 7;
                            },
                            child: Center(
                              child: Obx(
                                () => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      BText('coin'.tr, 16),
                                      if (state.value == 7)
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
                        flex: highPriceFlex,
                        child: BInkWell(
                            onTap: () {
                              state.value = 3;
                            },
                            child: Center(
                              child: Obx(
                                () => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      BText('high_price'.tr, 16),
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
                        flex: lowPriceFlex,
                        child: BInkWell(
                            onTap: () {
                              state.value = 4;
                            },
                            child: Center(
                              child: Obx(
                                () => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      BText('low_price'.tr, 16),
                                      if (state.value == 4)
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
                                      BText('change_rate'.tr, 16),
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
                              state.value = 5;
                            },
                            child: Center(
                              child: Obx(
                                () => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      BText('change_price'.tr, 16),
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
                        flex: tradeVolume24hFlex,
                        child: BInkWell(
                            onTap: () {
                              state.value = 0;
                            },
                            child: Center(
                              child: Obx(
                                () => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      BText('trade_volume_24h'.tr, 16),
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
                        flex: tradeAmount24hFlex,
                        child: BInkWell(
                            onTap: () {
                              state.value = 6;
                            },
                            child: Center(
                              child: Obx(
                                () => Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      BText('trade_amount_24h'.tr, 16),
                                      if (state.value == 6)
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
                                .to.upBitData.value.accTradeVolume24h.length
                            : state.value == 1
                                ? MarketController
                                    .to.upBitData.value.signedChangeRate.length
                                : state.value == 2
                                    ? MarketController
                                        .to.upBitData.value.tradePrice.length
                                    : state.value == 3
                                        ? MarketController
                                            .to.upBitData.value.highPrice.length
                                        : state.value == 4
                                            ? MarketController.to.upBitData.value
                                                .lowPrice.length
                                            : state.value == 5
                                                ? MarketController
                                                    .to
                                                    .upBitData
                                                    .value
                                                    .signedChangePrice
                                                    .length
                                                : state.value == 6
                                                    ? MarketController
                                                        .to
                                                        .upBitData
                                                        .value
                                                        .accTradePrice24h
                                                        .length
                                                    : MarketController
                                                        .to
                                                        .upBitData
                                                        .value
                                                        .market
                                                        .length,
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
                                      (state.value == 0
                                          ? MarketController.to.upBitData.value
                                              .accTradeVolume24h[index].market
                                          : state.value == 1
                                              ? MarketController
                                                  .to
                                                  .upBitData
                                                  .value
                                                  .signedChangeRate[index]
                                                  .market
                                              : state.value == 2
                                                  ? MarketController
                                                      .to
                                                      .upBitData
                                                      .value
                                                      .tradePrice[index]
                                                      .market
                                                  : state.value == 3
                                                      ? MarketController
                                                          .to
                                                          .upBitData
                                                          .value
                                                          .highPrice[index]
                                                          .market
                                                      : state.value == 4
                                                          ? MarketController
                                                              .to
                                                              .upBitData
                                                              .value
                                                              .lowPrice[index]
                                                              .market
                                                          : state.value == 5
                                                              ? MarketController
                                                                  .to
                                                                  .upBitData
                                                                  .value
                                                                  .signedChangePrice[
                                                                      index]
                                                                  .market
                                                              : state.value == 6
                                                                  ? MarketController
                                                                      .to
                                                                      .upBitData
                                                                      .value
                                                                      .accTradePrice24h[
                                                                          index]
                                                                      .market
                                                                  : MarketController
                                                                      .to
                                                                      .upBitData
                                                                      .value
                                                                      .market[
                                                                          index]
                                                                      .market),
                                      14)),
                              Expanded(
                                  flex: tradePriceFlex,
                                  child: BText(
                                      state.value == 0
                                          ? MarketController
                                              .to
                                              .upBitData
                                              .value
                                              .accTradeVolume24h[index]
                                              .tradePrice
                                              .toString()
                                          : state.value == 1
                                              ? MarketController
                                                  .to
                                                  .upBitData
                                                  .value
                                                  .signedChangeRate[index]
                                                  .tradePrice
                                                  .toString()
                                              : state.value == 2
                                                  ? MarketController
                                                      .to
                                                      .upBitData
                                                      .value
                                                      .tradePrice[index]
                                                      .tradePrice
                                                      .toString()
                                                  : state.value == 3
                                                      ? MarketController
                                                          .to
                                                          .upBitData
                                                          .value
                                                          .highPrice[index]
                                                          .tradePrice
                                                          .toString()
                                                      : state.value == 4
                                                          ? MarketController
                                                              .to
                                                              .upBitData
                                                              .value
                                                              .lowPrice[index]
                                                              .tradePrice
                                                              .toString()
                                                          : state.value == 5
                                                              ? MarketController
                                                                  .to
                                                                  .upBitData
                                                                  .value
                                                                  .signedChangePrice[
                                                                      index]
                                                                  .tradePrice
                                                                  .toString()
                                                              : state.value == 6
                                                                  ? MarketController
                                                                      .to
                                                                      .upBitData
                                                                      .value
                                                                      .accTradePrice24h[
                                                                          index]
                                                                      .tradePrice
                                                                      .toString()
                                                                  : MarketController
                                                                      .to
                                                                      .upBitData
                                                                      .value
                                                                      .market[
                                                                          index]
                                                                      .tradePrice
                                                                      .toString(),
                                      14)),
                              Expanded(
                                  flex: highPriceFlex,
                                  child: BText(
                                      state.value == 0
                                          ? MarketController
                                              .to
                                              .upBitData
                                              .value
                                              .accTradeVolume24h[index]
                                              .highPrice
                                              .toString()
                                          : state.value == 1
                                              ? MarketController
                                                  .to
                                                  .upBitData
                                                  .value
                                                  .signedChangeRate[index]
                                                  .highPrice
                                                  .toString()
                                              : state.value == 2
                                                  ? MarketController
                                                      .to
                                                      .upBitData
                                                      .value
                                                      .tradePrice[index]
                                                      .highPrice
                                                      .toString()
                                                  : state.value == 3
                                                      ? MarketController
                                                          .to
                                                          .upBitData
                                                          .value
                                                          .highPrice[index]
                                                          .highPrice
                                                          .toString()
                                                      : state.value == 4
                                                          ? MarketController
                                                              .to
                                                              .upBitData
                                                              .value
                                                              .lowPrice[index]
                                                              .highPrice
                                                              .toString()
                                                          : state.value == 5
                                                              ? MarketController
                                                                  .to
                                                                  .upBitData
                                                                  .value
                                                                  .signedChangePrice[
                                                                      index]
                                                                  .highPrice
                                                                  .toString()
                                                              : state.value == 6
                                                                  ? MarketController
                                                                      .to
                                                                      .upBitData
                                                                      .value
                                                                      .accTradePrice24h[
                                                                          index]
                                                                      .highPrice
                                                                      .toString()
                                                                  : MarketController
                                                                      .to
                                                                      .upBitData
                                                                      .value
                                                                      .market[
                                                                          index]
                                                                      .highPrice
                                                                      .toString(),
                                      14)),
                              Expanded(
                                  flex: lowPriceFlex,
                                  child: BText(
                                      state.value == 0
                                          ? MarketController.to.upBitData.value
                                              .accTradeVolume24h[index].lowPrice
                                              .toString()
                                          : state.value == 1
                                              ? MarketController
                                                  .to
                                                  .upBitData
                                                  .value
                                                  .signedChangeRate[index]
                                                  .lowPrice
                                                  .toString()
                                              : state.value == 2
                                                  ? MarketController
                                                      .to
                                                      .upBitData
                                                      .value
                                                      .tradePrice[index]
                                                      .lowPrice
                                                      .toString()
                                                  : state.value == 3
                                                      ? MarketController
                                                          .to
                                                          .upBitData
                                                          .value
                                                          .highPrice[index]
                                                          .lowPrice
                                                          .toString()
                                                      : state.value == 4
                                                          ? MarketController
                                                              .to
                                                              .upBitData
                                                              .value
                                                              .lowPrice[index]
                                                              .lowPrice
                                                              .toString()
                                                          : state.value == 5
                                                              ? MarketController
                                                                  .to
                                                                  .upBitData
                                                                  .value
                                                                  .signedChangePrice[
                                                                      index]
                                                                  .lowPrice
                                                                  .toString()
                                                              : state.value == 6
                                                                  ? MarketController
                                                                      .to
                                                                      .upBitData
                                                                      .value
                                                                      .accTradePrice24h[
                                                                          index]
                                                                      .lowPrice
                                                                      .toString()
                                                                  : MarketController
                                                                      .to
                                                                      .upBitData
                                                                      .value
                                                                      .market[
                                                                          index]
                                                                      .lowPrice
                                                                      .toString(),
                                      14)),
                              Expanded(
                                  flex: changeRateFlex,
                                  child: DecimalText(
                                    state.value == 0
                                        ? MarketController
                                                .to
                                                .upBitData
                                                .value
                                                .accTradeVolume24h[index]
                                                .signedChangeRate *
                                            100
                                        : state.value == 1
                                            ? MarketController
                                                    .to
                                                    .upBitData
                                                    .value
                                                    .signedChangeRate[index]
                                                    .signedChangeRate *
                                                100
                                            : state.value == 2
                                                ? MarketController
                                                        .to
                                                        .upBitData
                                                        .value
                                                        .tradePrice[index]
                                                        .signedChangeRate *
                                                    100
                                                : state.value == 3
                                                    ? MarketController
                                                            .to
                                                            .upBitData
                                                            .value
                                                            .highPrice[index]
                                                            .signedChangeRate *
                                                        100
                                                    : state.value == 4
                                                        ? MarketController
                                                                .to
                                                                .upBitData
                                                                .value
                                                                .lowPrice[index]
                                                                .signedChangeRate *
                                                            100
                                                        : state.value == 5
                                                            ? MarketController
                                                                    .to
                                                                    .upBitData
                                                                    .value
                                                                    .signedChangePrice[
                                                                        index]
                                                                    .signedChangeRate *
                                                                100
                                                            : state.value == 6
                                                                ? MarketController
                                                                        .to
                                                                        .upBitData
                                                                        .value
                                                                        .accTradePrice24h[
                                                                            index]
                                                                        .signedChangeRate *
                                                                    100
                                                                : MarketController
                                                                        .to
                                                                        .upBitData
                                                                        .value
                                                                        .market[
                                                                            index]
                                                                        .signedChangeRate *
                                                                    100,
                                    14,
                                    rounds: true,
                                    unit: '%',
                                  )),
                              Expanded(
                                  flex: changePriceFlex,
                                  child: DecimalText(
                                    state.value == 0
                                        ? MarketController
                                            .to
                                            .upBitData
                                            .value
                                            .accTradeVolume24h[index]
                                            .signedChangePrice
                                        : state.value == 1
                                            ? MarketController
                                                .to
                                                .upBitData
                                                .value
                                                .signedChangeRate[index]
                                                .signedChangePrice
                                            : state.value == 2
                                                ? MarketController
                                                    .to
                                                    .upBitData
                                                    .value
                                                    .tradePrice[index]
                                                    .signedChangePrice
                                                : state.value == 3
                                                    ? MarketController
                                                        .to
                                                        .upBitData
                                                        .value
                                                        .highPrice[index]
                                                        .signedChangePrice
                                                    : state.value == 4
                                                        ? MarketController
                                                            .to
                                                            .upBitData
                                                            .value
                                                            .lowPrice[index]
                                                            .signedChangePrice
                                                        : state.value == 5
                                                            ? MarketController
                                                                .to
                                                                .upBitData
                                                                .value
                                                                .signedChangePrice[
                                                                    index]
                                                                .signedChangePrice
                                                            : state.value == 6
                                                                ? MarketController
                                                                    .to
                                                                    .upBitData
                                                                    .value
                                                                    .accTradePrice24h[
                                                                        index]
                                                                    .signedChangePrice
                                                                : MarketController
                                                                    .to
                                                                    .upBitData
                                                                    .value
                                                                    .market[
                                                                        index]
                                                                    .signedChangePrice,
                                    14,
                                    unit: 'KRW'.tr,
                                  )),
                              Expanded(
                                  flex: tradeVolume24hFlex,
                                  child: KMBText(
                                      state.value == 0
                                          ? MarketController
                                              .to
                                              .upBitData
                                              .value
                                              .accTradeVolume24h[index]
                                              .accTradeVolume24h
                                          : state.value == 1
                                              ? MarketController
                                                  .to
                                                  .upBitData
                                                  .value
                                                  .signedChangeRate[index]
                                                  .accTradeVolume24h
                                              : state.value == 2
                                                  ? MarketController
                                                      .to
                                                      .upBitData
                                                      .value
                                                      .tradePrice[index]
                                                      .accTradeVolume24h
                                                  : state.value == 3
                                                      ? MarketController
                                                          .to
                                                          .upBitData
                                                          .value
                                                          .highPrice[index]
                                                          .accTradeVolume24h
                                                      : state.value == 4
                                                          ? MarketController
                                                              .to
                                                              .upBitData
                                                              .value
                                                              .lowPrice[index]
                                                              .accTradeVolume24h
                                                          : state.value == 5
                                                              ? MarketController
                                                                  .to
                                                                  .upBitData
                                                                  .value
                                                                  .signedChangePrice[
                                                                      index]
                                                                  .accTradeVolume24h
                                                              : state.value == 6
                                                                  ? MarketController
                                                                      .to
                                                                      .upBitData
                                                                      .value
                                                                      .accTradePrice24h[
                                                                          index]
                                                                      .accTradeVolume24h
                                                                  : MarketController
                                                                      .to
                                                                      .upBitData
                                                                      .value
                                                                      .market[
                                                                          index]
                                                                      .accTradeVolume24h,
                                      14)),
                              Expanded(
                                  flex: tradeAmount24hFlex,
                                  child: KMBText(
                                      state.value == 0
                                          ? MarketController
                                              .to
                                              .upBitData
                                              .value
                                              .accTradeVolume24h[index]
                                              .accTradePrice24h
                                          : state.value == 1
                                              ? MarketController
                                                  .to
                                                  .upBitData
                                                  .value
                                                  .signedChangeRate[index]
                                                  .accTradePrice24h
                                              : state.value == 2
                                                  ? MarketController
                                                      .to
                                                      .upBitData
                                                      .value
                                                      .tradePrice[index]
                                                      .accTradePrice24h
                                                  : state.value == 3
                                                      ? MarketController
                                                          .to
                                                          .upBitData
                                                          .value
                                                          .highPrice[index]
                                                          .accTradePrice24h
                                                      : state.value == 4
                                                          ? MarketController
                                                              .to
                                                              .upBitData
                                                              .value
                                                              .lowPrice[index]
                                                              .accTradePrice24h
                                                          : state.value == 5
                                                              ? MarketController
                                                                  .to
                                                                  .upBitData
                                                                  .value
                                                                  .signedChangePrice[
                                                                      index]
                                                                  .accTradePrice24h
                                                              : state.value == 6
                                                                  ? MarketController
                                                                      .to
                                                                      .upBitData
                                                                      .value
                                                                      .accTradePrice24h[
                                                                          index]
                                                                      .accTradePrice24h
                                                                  : MarketController
                                                                      .to
                                                                      .upBitData
                                                                      .value
                                                                      .market[
                                                                          index]
                                                                      .accTradePrice24h,
                                      14)),
                              Expanded(
                                  flex: selectFlex,
                                  child: BInkWell(
                                    onTap: () {
                                      var market = state.value == 0
                                          ? MarketController.to.upBitData.value
                                              .accTradeVolume24h[index].market
                                          : state.value == 1
                                              ? MarketController
                                                  .to
                                                  .upBitData
                                                  .value
                                                  .signedChangeRate[index]
                                                  .market
                                              : state.value == 2
                                                  ? MarketController
                                                      .to
                                                      .upBitData
                                                      .value
                                                      .tradePrice[index]
                                                      .market
                                                  : state.value == 3
                                                      ? MarketController
                                                          .to
                                                          .upBitData
                                                          .value
                                                          .highPrice[index]
                                                          .market
                                                      : state.value == 4
                                                          ? MarketController
                                                              .to
                                                              .upBitData
                                                              .value
                                                              .lowPrice[index]
                                                              .market
                                                          : state.value == 5
                                                              ? MarketController
                                                                  .to
                                                                  .upBitData
                                                                  .value
                                                                  .signedChangePrice[
                                                                      index]
                                                                  .market
                                                              : MarketController
                                                                  .to
                                                                  .upBitData
                                                                  .value
                                                                  .accTradePrice24h[
                                                                      index]
                                                                  .market;

                                      var marketInfo = MarketController.to.marketCode.where((p0) => p0.koreanName == market).toList()[0];

                                      if (!ManualTradingListController.to.transactionList
                                          .contains(marketInfo)) {
                                        if (ManualTradingListController.to.transactionList.length < 5) {
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
