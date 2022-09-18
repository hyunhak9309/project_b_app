import 'dart:async';

import 'package:get/get.dart';
import 'package:project_b/domain/use_case/use_case_order_record.dart';
import 'package:project_b/domain/use_case/use_case_wallet.dart';

import '../../../data/entity/share/entity_order_response/entity_order_response.dart';
import '../../../domain/model/model_wallet/model_wallet.dart';

class MyAssetController extends GetxController {
  MyAssetController(
      {required this.getUseCaseRecord, required this.getUseCaseWallet});

  final UseCaseOrderRecord getUseCaseRecord;
  final UseCaseWallet getUseCaseWallet;

  final Rx<ModelWallet> _wallet = ModelWallet(
    originalWalletInfo: [],
    totalAmount: 0,
    amountAvailableToOrder: 0,
    tiedAmount: 0,
  ).obs;
  final RxList<EntityOrderResponse> _orderRecord = <EntityOrderResponse>[].obs;

  Rx<ModelWallet> get wallet => _wallet;

  @override
  void onInit() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      final getWalletInfo = await getUseCaseWallet.getWalletInfo();
      getWalletInfo.when(
          success: (data) async {
            _wallet.value = data; // 자산현황 최신화
            final getOrderRecord = await getUseCaseRecord.readOrderRecord();
            getOrderRecord.when(
                success: (record) {
                  _orderRecord.value = record.waitingRecord;
                  replaceOrderToDone();
                },
                error: (_) {});
          },
          error: (_) {});
    });
    super.onInit();
  }

  void replaceOrderToDone() {
    var assetList = [];
    for (var element in wallet.value.originalWalletInfo) {
      if (element.currency != 'KRW') {
        assetList.add(element.currency);
      }
    }
    for (var element in _orderRecord) {
      getUseCaseRecord.replaceOrderState(
          element.market,
          element.volume,
          assetList
              .contains(element.market.substring(4, element.market.length)));
    }
  }
}
