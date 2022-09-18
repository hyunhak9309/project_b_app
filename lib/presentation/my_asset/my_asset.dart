import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_b/presentation/component/coin_name.dart';
import 'package:project_b/presentation/component/b_inkwell.dart';
import 'package:project_b/presentation/component/kmb_text.dart';
import '../component/b_text.dart';
import 'my_asset_controller.dart';

class MyAsset extends GetView<MyAssetController> {
  const MyAsset({Key? key}) : super(key: key);

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
              child: Center(
                child: BText('my_coin'.tr, 16),
              )),
          Container(
            height: 1,
            color: Theme.of(context).indicatorColor,
          ),
          Expanded(
              flex: 14,
              child: Obx(() => ListView.builder(
                  itemCount: controller.wallet.value.originalWalletInfo.length,
                  itemBuilder: (context, index) {
                    if (controller
                            .wallet.value.originalWalletInfo[index].currency ==
                        'KRW') {
                      return Container();
                    } else {
                      return Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.fromLTRB(0, 2.5, 0, 2.5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                BText(
                                  '${controller.wallet.value.originalWalletInfo.length - index}',
                                  12,
                                  color: Colors.yellow,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                CoinName(
                                    market:
                                        'KRW-${controller.wallet.value.originalWalletInfo[index].currency}'),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                KMBText(
                                    (double.parse(controller
                                            .wallet
                                            .value
                                            .originalWalletInfo[index]
                                            .amountAvailableToOrder) +
                                        double.parse(controller
                                            .wallet
                                            .value
                                            .originalWalletInfo[index]
                                            .tiedAmount)),
                                    16),
                                const SizedBox(
                                  width: 2,
                                ),
                                BText('ge'.tr, 14),
                              ],
                            ),
                            BInkWell(
                              onTap: () {},
                              child: Container(
                                  padding: const EdgeInsets.fromLTRB(
                                      10, 2.5, 10, 2.5),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color:
                                              Theme.of(context).indicatorColor,
                                          width: 0.5),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: BText('sell'.tr, 12)),
                            )
                          ],
                        ),
                      );
                    }
                  }))),
        ],
      ),
    );
  }
}
