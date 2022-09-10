import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../domain/model/model_change_rate.dart';
import '../../domain/model/model_wallet.dart';
import '../../domain/use_case/right/use_case_asset.dart';
import '../../domain/use_case/right/use_case_wallet.dart';
import '../../main.dart';

class RightController extends GetxController {
  RightController(
      {required this.getUseCaseWallet, required this.getUseCaseAsset});

  final UseCaseWallet getUseCaseWallet;
  final UseCaseAsset getUseCaseAsset;

  static RightController get to => Get.find();

  final TextEditingController _depositController = TextEditingController();
  final TextEditingController _withdrawController = TextEditingController();
  final _timer = Stopwatch();

  final Rx<String> _currentTime = ("connecting".tr).obs;
  final Rx<String> _runningTime = ("connecting".tr).obs;
  final Rx<double> _canWithdrawAmount = 0.0.obs;
  final Rx<ModelWallet> _wallet = ModelWallet(
    originalWalletInfo: [],
    totalAmount: 0,
    amountAvailableToOrder: 0,
    tiedAmount: 0,
  ).obs;
  final Rx<ModelChangeRate> _asset = ModelChangeRate(
          totalBeforeDay: null,
          totalBeforeWeek: null,
          totalBeforeMonth: null,
          totalBeforeYear: null,
          totalBeforeMinute: null,
          totalBeforeHour: null)
      .obs;

  Rx<String> get currentTime => _currentTime;

  Rx<String> get runningTime => _runningTime;

  Rx<ModelWallet> get wallet => _wallet;

  Rx<ModelChangeRate> get asset => _asset;

  TextEditingController get depositController => _depositController;

  TextEditingController get withdrawController => _withdrawController;

  Rx<double> get canWithdrawAmount => _canWithdrawAmount;

  @override
  void onInit() async {
    super.onInit();
    _timer.start();

    Timer.periodic(const Duration(seconds: 1), (timer) {
      processPerSecond(DateTime.now());

      if (runningTime.value != "connecting".tr) {
        if (runningTime.value.split(':')[1] != '00' &&
            runningTime.value.split(':')[2] == '00') {
          processPerMinute(DateTime.now());
        }
        if (runningTime.value.split(':')[0] != '00' &&
            runningTime.value.split(':')[1] == '00') {
          processPerHour(DateTime.now());
        }
      }
    });
  }

  void processPerSecond(DateTime currentTime) async {
    _runningTime.value = _timer.elapsed.toString().split('.')[0]; // 앱 가동시간 최신화
    _currentTime.value =
        DateFormat('yyyy-MM-dd  EEEE\n ${'currentTime'.tr}a KK:mm:ss')
            .format(currentTime); // 현재 시간 최신화
    _wallet.value = await getUseCaseWallet.getMyWalletInfo(); // 자산현황 최신화
    _asset.value = await getUseCaseAsset.setAsset(
        currentTime: currentTime,
        currentTotalAmount: _wallet.value.totalAmount); // 증감량 현황 최신화
    _canWithdrawAmount.value = await getUseCaseWallet.getWithdrawInfo();
  }

  void processPerMinute(DateTime currentTime) {
    getUseCaseAsset.insertAsset(
        totalAmount: _wallet.value.totalAmount, currentTime: currentTime);
  }

  void processPerHour(DateTime currentTime) {}

  void depositMoney() {
    getUseCaseWallet.depositMoney(int.parse(_depositController.text));
    _depositController.clear();
  }

  void withdrawMoney(){
    getUseCaseWallet.withdrawMoney(int.parse(_withdrawController.text));
    _withdrawController.clear();
  }
}
