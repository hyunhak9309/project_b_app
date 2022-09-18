import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:project_b/presentation/core_controller.dart';
import '../../domain/model/model_change_rate/model_change_rate.dart';
import '../../domain/model/model_wallet/model_wallet.dart';
import '../../domain/use_case/use_case_asset.dart';
import '../../domain/use_case/use_case_wallet.dart';

class InfoDeskController extends GetxController {
  InfoDeskController(
      {required this.getUseCaseWallet, required this.getUseCaseAsset});

  final UseCaseWallet getUseCaseWallet;
  final UseCaseAsset getUseCaseAsset;

  static InfoDeskController get to => Get.find();

  final TextEditingController _depositController = TextEditingController();
  final TextEditingController _withdrawController = TextEditingController();

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
    totalBeforeDay: 0,
    totalBeforeWeek: 0,
    totalBeforeMonth: 0,
    totalBeforeYear: 0,
    totalBeforeMinute: 0,
    totalBeforeHour: 0,
  ).obs;

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

    Timer.periodic(const Duration(seconds: 1), (timer) {
      processPerSecond(DateTime.now());

      if (runningTime.value != "connecting".tr) {
        if (runningTime.value.split(':')[1] != '00' &&
            runningTime.value.split(':')[2] == '00') {
          // 분당 작업
          processPerMinute(DateTime.now());
        }
        if (runningTime.value.split(':')[0] != '00' &&
            runningTime.value.split(':')[1] == '00') {
          //시간 당 작업
        }
      }
    });
  }

  void processPerSecond(DateTime currentTime) async {
    _runningTime.value =
        CoreController.to.timer.elapsed.toString().split('.')[0]; // 앱 가동시간 최신화
    _currentTime.value =
        DateFormat('yyyy-MM-dd  EEEE\n ${'currentTime'.tr}a KK:mm:ss')
            .format(currentTime); // 현재 시간 최신화

    final getWalletInfo = await getUseCaseWallet.getWalletInfo(); // 자산현황 최신화
    getWalletInfo.when(
        success: (v) {
          _wallet.value = v;
        },
        error: (_) {});

    final readAssetResult = await getUseCaseAsset.readAsset(
        currentTime: currentTime,
        currentTotalAmount: _wallet.value.totalAmount); // 증감량 현황 최신화
    readAssetResult.when(
        success: (v) {
          _asset.value = v;
        },
        error: (_) {});

    final getWithdrawInfo = await getUseCaseWallet.getWithdrawInfo();
    getWithdrawInfo.when(
        success: (v) {
          _canWithdrawAmount.value = v;
        },
        error: (_) {});
  }

  void processPerMinute(DateTime currentTime) {
    getUseCaseAsset.insertAsset(
        totalAmount: _wallet.value.totalAmount, currentTime: currentTime);
  }

  void depositMoney() {
    getUseCaseWallet.depositMoney(int.parse(_depositController.text));
    _depositController.clear();
  }

  void withdrawMoney() {
    getUseCaseWallet.withdrawMoney(int.parse(_withdrawController.text));
    _withdrawController.clear();
  }
}
