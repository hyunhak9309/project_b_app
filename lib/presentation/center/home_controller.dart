import 'dart:async';

import 'package:get/get.dart';
import 'package:project_b/domain/use_case/center/use_case_market.dart';

import '../right/right_controller.dart';

class HomeController extends GetxController{
  HomeController({required this.getUseCaseMarket});
  static HomeController get to => Get.find();

  final UseCaseMarket getUseCaseMarket;

  final RxList<String> _transactionList = <String>[].obs;
  final RxList<int> _transactionRatio = [20,20,20,20,20].obs;
  final RxList<bool> _transactionStatus = <bool>[].obs;
  final Rx<bool> _allTransactionStatus = true.obs;

  RxList<String> get transactionList => _transactionList;
  RxList<int> get transactionRatio => _transactionRatio;
  RxList<bool> get transactionStatus => _transactionStatus;
  Rx<bool> get allTransactionStatus => _allTransactionStatus;


  @override
  void onInit() {
    super.onInit();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      processPerSecond(DateTime.now());
      if (RightController.to.runningTime.value != "connecting".tr) {
        if (RightController.to.runningTime.value.split(':')[1] != '00' &&
            RightController.to.runningTime.value.split(':')[2] == '00') {
          processPerMinute(DateTime.now());
        }
        if (RightController.to.runningTime.value.split(':')[0] != '00' &&
            RightController.to.runningTime.value.split(':')[1] == '00') {
          processPerHour(DateTime.now());
        }
      }
    });
  }

  void processPerSecond(DateTime currentTime) async {
  }

  void processPerMinute(DateTime currentTime) async {}

  void processPerHour(DateTime currentTime) async {

  }


}