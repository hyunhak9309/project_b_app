import 'dart:async';

import 'package:get/get.dart';

import '../domain/use_case/use_case_shared_preferences.dart';

class CoreController extends GetxController {
  CoreController({required this.getUseCaseSharedPreferences});

  static CoreController get to => Get.find();
  final UseCaseSharedPreferences getUseCaseSharedPreferences;

  final _timer = Stopwatch();
  final Rx<String> _runningTime = ("connecting".tr).obs;
  final Rx<bool> _allTransactionStatus = true.obs;
  final Rx<bool> _autoTransactionStatus = false.obs;
  var _orderLimitSecond = 0;
  var _orderLimitMinute = 0;

  int get orderLimitSecond => _orderLimitSecond;

  int get orderLimitMinute => _orderLimitMinute;

  Stopwatch get timer => _timer;

  Rx<bool> get allTransactionStatus => _allTransactionStatus;

  Rx<bool> get autoTransactionStatus => _autoTransactionStatus;
  final Rx<int> _transactionRatio = 5.obs;

  Rx<int> get transactionRatio => _transactionRatio;

  @override
  Future<void> onInit() async {
    _timer.start();
    final readTransactionRatio =
        await getUseCaseSharedPreferences.readTransactionRatio();
    readTransactionRatio.when(
        success: (data) {
          _transactionRatio.value = data;
        },
        error: (_) {});
    _transactionRatio.listen((p0) {
      getUseCaseSharedPreferences
          .insertTransactionRatio(_transactionRatio.value);
    });

    Timer.periodic(const Duration(seconds: 1), (timer) {
      _orderLimitSecond = 0;
      _runningTime.value = _timer.elapsed.toString().split('.')[0]; // 앱 가동시간 최신화

      if (_runningTime.value != "connecting".tr) {
        if (_runningTime.value.split(':')[1] != '00' &&
            _runningTime.value.split(':')[2] == '00') {
          _orderLimitMinute = 0;
        }
        if (_runningTime.value.split(':')[0] != '00' &&
            _runningTime.value.split(':')[1] == '00') {
          //시간 단위 가동 처리
        }
      }
    });
    super.onInit();
  }

  bool canOrder() {
    if (_orderLimitSecond < 8 && _orderLimitMinute < 200) {
      _orderLimitSecond += 1;
      _orderLimitMinute += 1;
      return true;
    } else {
      return false;
    }
  }
}
