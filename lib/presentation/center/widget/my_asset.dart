import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_b/data/data_source/mongo_db.dart';
import 'package:project_b/data/data_source/up_bit_server.dart';
import 'package:project_b/data/repository/center/order_repository_impl.dart';
import 'package:project_b/data/repository/center/record_repository_impl.dart';
import 'package:project_b/domain/use_case/center/use_case_my_asset.dart';
import 'package:project_b/domain/use_case/center/use_case_record.dart';
import 'package:project_b/presentation/center/widget/coin_name.dart';
import 'package:project_b/presentation/center/widget/my_asset_controller.dart';
import 'package:project_b/presentation/component/b_inkwell.dart';
import 'package:project_b/presentation/component/kmb_text.dart';
import '../../component/b_text.dart';
import '../../right/right_controller.dart';

class MyAsset extends StatelessWidget {
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
                  itemCount:
                      RightController.to.wallet.value.originalWalletInfo.length,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Container();
                    } else {
                      Get.put(
                          MyAssetController(
                              coin: RightController.to.wallet.value
                                  .originalWalletInfo[index].currency,
                              index: index,
                              getUseCaseMyAsset: UseCaseMyAsset(
                                  repository: OrderRepositoryImpl(
                                      server: UpBitServer())),
                              getUseCaseRecord: UseCaseRecord(
                                  repository:
                                      RecordRepositoryImpl(db: MyDB()))),
                          tag: RightController.to.wallet.value
                              .originalWalletInfo[index].currency);
                      return Container(
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).indicatorColor)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            BText('$index', 16),
                            CoinName(
                                market:
                                    'KRW-${RightController.to.wallet.value.originalWalletInfo[index].currency}'),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                KMBText(
                                    (double.parse(RightController
                                            .to
                                            .wallet
                                            .value
                                            .originalWalletInfo[index]
                                            .amountAvailableToOrder) +
                                        double.parse(RightController
                                            .to
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
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 2.5, 5, 2.5),
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).indicatorColor,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                      child: BText(
                                    'sell'.tr,
                                    14,
                                    color: Theme.of(context)
                                        .scaffoldBackgroundColor,
                                  ))),
                            ),
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
