import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_b/data/entity/share/entity_order_response/entity_order_response.dart';
import 'package:project_b/data/entity/upbit/entity_market_code/entity_market_code.dart';
import 'package:project_b/domain/use_case/use_case_order_record.dart';
import 'package:project_b/domain/use_case/use_case_market.dart';

import '../../domain/use_case/use_case_transaction.dart';
import '../../main.dart';
import '../core_controller.dart';

class TransactionController extends GetxController {
  TransactionController(
      {required this.market,
      required this.getUseCaseTransaction,
      required this.getUseCaseOrderRecord,
      required this.getUseCaseUpBit});

  final EntityMarketCode market;
  final UseCaseTransaction getUseCaseTransaction;
  final UseCaseOrderRecord getUseCaseOrderRecord;
  final UseCaseMarket getUseCaseUpBit;
  final Rx<double> _coinPrice = 0.0.obs;
  final Rx<bool> _transactionStatus = false.obs;
  final RxList<EntityOrderResponse> _waitingOrderList =
      <EntityOrderResponse>[].obs;
  final ScrollController scrollController = ScrollController();

  Rx<double> get coinPrice => _coinPrice;

  Rx<bool> get transactionStatus => _transactionStatus;

  Timer? timer;

  @override
  void onInit() async {
    super.onInit();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      final marketCode = market.market;
      final getCoinInfo = await getUseCaseUpBit.getMarketCoinInfo([market]);
      getCoinInfo.when(
          success: (data) {
            _coinPrice.value = data.market.first.tradePrice;
          },
          error: (_) {});

      final getOrderRecord = await getUseCaseOrderRecord.readOrderRecord();
      getOrderRecord.when(
          success: (data) {
            _waitingOrderList.value = data.waitingRecord
                .where((element) => element.market == marketCode)
                .toList();
          },
          error: (_) {});

      if (CoreController.to.allTransactionStatus.value &&
          transactionStatus.value &&
          _waitingOrderList.isEmpty &&
          CoreController.to.canOrder()) {
        final order = await getUseCaseTransaction.startOrder(marketCode);
        order.when(
            success: (data) {
              getUseCaseOrderRecord.insertOrderRecord(data);
            },
            error: (_) {});
      }
    });
  }

  @override
  void onClose() {
    timer!.cancel();
    super.onClose();
  }
}
