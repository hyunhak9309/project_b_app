import 'dart:async';

import 'package:get/get.dart';
import 'package:project_b/data/entity/upbit/entity_order_response.dart';
import 'package:project_b/domain/use_case/center/use_case_record.dart';
import 'package:project_b/domain/use_case/center/use_case_transaction.dart';
import 'package:project_b/presentation/center/home_controller.dart';
import 'package:project_b/presentation/left/left_controller.dart';

import '../../../main.dart';

class TransactionController extends GetxController {
  TransactionController(
      {required this.market,
      required this.position,
      required this.getUseCaseTransaction,
      required this.getUseCaseRecord});

  final String market;
  final int position;
  final UseCaseTransaction getUseCaseTransaction;
  final UseCaseRecord getUseCaseRecord;
  final Rx<double> _revenue = 0.0.obs;
  final Rx<double> _rateOfReturn = 0.0.obs;
  final Rx<bool> _transactionStatus = true.obs;
  final RxList<EntityOrderResponse> _orderRecord = <EntityOrderResponse> [].obs;

  Rx<double> get revenue => _revenue;

  Rx<double> get rateOfReturn => _rateOfReturn;

  Rx<bool> get transactionStatus => _transactionStatus;

  RxList<EntityOrderResponse> get orderRecord => _orderRecord;

  Timer? timer;

  @override
  void onInit() async {
    super.onInit();
    timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      if (HomeController.to.allTransactionStatus.value &&
          _transactionStatus.value) {
        var marketCode = LeftController.to.marketCode
            .where((p0) => p0.koreanName == market)
            .toList()[0]
            .market;
        _orderRecord.value = await getUseCaseRecord.readOrderRecord(marketCode);
        var waitingList = _orderRecord.where((element) => element.state == 'wait').toList();
        if(waitingList.isEmpty && HomeController.to.canOrder()){ //대기 중인 주문이 없을 때 & 주문 요청 수가 초과하지 않았을 때
          var process01 = await getUseCaseTransaction.startOrder(marketCode, position);
          logger.i(process01);
          if(process01 != null){
              getUseCaseRecord.insertOrderRecord(process01);
          }
        }
      }
    });
  }


  @override
  void onClose() {
    timer!.cancel();
    super.onClose();
  }
}
