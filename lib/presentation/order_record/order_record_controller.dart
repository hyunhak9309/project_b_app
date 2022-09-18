import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:project_b/domain/model/model_order_record/model_order_record.dart';
import 'package:project_b/domain/use_case/use_case_order_record.dart';
import 'package:project_b/domain/use_case/use_case_transaction.dart';

import '../../../main.dart';
import '../../application/util/result.dart';

class OrderRecordController extends GetxController {
  OrderRecordController(
      {required this.getUseCaseRecord, required this.getUseCaseTransaction});

  final UseCaseOrderRecord getUseCaseRecord;
  final UseCaseTransaction getUseCaseTransaction;

  final Rx<ModelOrderRecord> _orderRecord =
      ModelOrderRecord(totalRecord: [], waitingRecord: []).obs;
  final Rx<bool> _total = true.obs;

  Rx<ModelOrderRecord> get orderRecord => _orderRecord;

  Rx<bool> get total => _total;
  final ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      final readOrderRecord = await getUseCaseRecord.readOrderRecord();
      readOrderRecord.when(
          success: (data) {
            _orderRecord.value = data;
          },
          error: (_) {});
    });
    super.onInit();
  }

  void deleteOrder(String uuid) async {
    final cancelOrder = await getUseCaseTransaction.cancel(uuid);
    cancelOrder.when(success: (_){
      getUseCaseRecord.deleteOrderRecord(uuid);
    }, error: (_){});
  }
}
