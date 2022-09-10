import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_b/domain/use_case/center/use_case_my_asset.dart';
import 'package:project_b/domain/use_case/center/use_case_record.dart';
import 'package:project_b/presentation/center/widget/coin_name.dart';
import 'package:project_b/presentation/component/b_inkwell.dart';
import 'package:project_b/presentation/component/kmb_text.dart';
import '../../../domain/use_case/center/use_case_transaction.dart';
import '../../../main.dart';
import '../../component/b_text.dart';
import '../../right/right_controller.dart';

class MyAssetController extends GetxController {
  MyAssetController(
      {required this.coin,
      required this.index,
      required this.getUseCaseMyAsset, required this.getUseCaseRecord});

  final String coin;
  final int index;
  final UseCaseMyAsset getUseCaseMyAsset;
  final UseCaseRecord getUseCaseRecord;

  @override
  void onInit() async {
    super.onInit();
    var assetInfo = RightController.to.wallet.value.originalWalletInfo
        .where((element) => element.currency == coin)
        .toList()[0];
    getUseCaseRecord.changeDoneToCoin('KRW-$coin', assetInfo.amountAvailableToOrder); // 체결이 완료되서 내 자산에 들어오면 주문완룔로 변경

    // if (double.parse(assetInfo.amountAvailableToOrder) != 0) {
    //   // getUseCaseMyAsset.startOrder('KRW-$coin');
    // }
  }

  @override
  void onClose() {
    // TODO: implement onClose
    logger.wtf('iam dead');
    super.onClose();
  }
}
