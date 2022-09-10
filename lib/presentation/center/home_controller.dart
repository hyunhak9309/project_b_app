import 'dart:async';

import 'package:get/get.dart';
import 'package:project_b/domain/use_case/center/use_case_transaction.dart';
import 'package:project_b/presentation/left/left_controller.dart';

import '../../domain/model/model_mongo_coin_list.dart';
import '../../domain/model/model_up_bit_coin_list.dart';
import '../../domain/model/model_up_bit_order_book_list.dart';
import '../../domain/use_case/center/use_case_home.dart';
import '../../main.dart';
import '../right/right_controller.dart';

class HomeController extends GetxController {
  HomeController(
      {required this.getUseCaseMarket, required this.getUseCaseHome});

  static HomeController get to => Get.find();

  final UseCaseTransaction getUseCaseMarket;
  final UseCaseHome getUseCaseHome;

  final RxList<String> _transactionList = <String>[].obs;
  final RxList<int> _transactionRatio = <int>[].obs;
  final Rx<bool> _allTransactionStatus = true.obs;
  final Rx<bool> _autoTransactionStatus = false.obs;
  var _orderLimitSecond = 0;
  var _orderLimitMinute = 0;

  RxList<String> get transactionList => _transactionList;

  RxList<int> get transactionRatio => _transactionRatio;

  Rx<bool> get allTransactionStatus => _allTransactionStatus;

  Rx<bool> get autoTransactionStatus => _autoTransactionStatus;

  int get orderLimitSecond => _orderLimitSecond;
  int get orderLimitMinute => _orderLimitMinute;

  @override
  void onInit() async {
    super.onInit();
    _transactionRatio.value = await getUseCaseHome.readTransactionRatio();
    _transactionRatio.listen((p0) {
      getUseCaseHome.insertTransactionRatio(_transactionRatio);
    });

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
    // if (_autoTransactionStatus.value && _allTransactionStatus.value) {
    //   HomeController.to.analyzeMarket(
    //       LeftController.to.upBitData.value,
    //       LeftController.to.analyzeOrderBook.value,
    //       LeftController.to.mongoData.value);
    // }
    _orderLimitSecond = 0;
  }

  void processPerMinute(DateTime currentTime) async {
    _orderLimitMinute = 0;
  }

  void processPerHour(DateTime currentTime) async {}

  bool canOrder(){
    if(_orderLimitSecond < 8 && _orderLimitMinute < 200){
      _orderLimitSecond += 1;
      _orderLimitMinute += 1;
      return true;
    }else{
      return false;
    }
  }


  // void analyzeMarket(ModelUpBitCoinList upBitCoinList,
  //     ModelUpBitOrderBookList orderBookList, ModelMongoCoinList mongoCoinList)async {
  //   var process01 = [];
  //
  //   mongoCoinList.accTradePrice
  //       .where((element) =>
  //           element.accTradePrice > 1000000 && element.signedChangeRate >= 0)
  //       .toList()
  //       .forEach((element) {
  //     process01.add(element.market);
  //   });
  //
  //   // 1번 선정 : 분당 거래 대금 100만원 이상, 분당 변화율이 0이상(상승, 보합)일 때 선정
  //
  //   var process02 = [];
  //
  //   orderBookList.oneToFiveAskBidRatio
  //       .where((element) =>
  //           process01.contains(element.market) &&
  //           element.oneToFiveOfTotalAskRatio <= 50 &&
  //           element.oneToFiveOfTotalBidRatio <= 50 &&
  //           element.oneToFiveAskBidRatio >= 100 &&
  //           element.oneToFiveAskBidRatio <= 500)
  //       .toList()
  //       .forEach((element) {
  //     process02.add(element.market);
  //   });
  //
  //   // 2번 선정 : 1번에서 선정된 것을 토대로 1-5호가 매수/매도 비중이 각 50%이상 1/5호가 매수/매도율이 100%이상 500%이하 선정
  //
  //   if (process02.isNotEmpty) {
  //     for (var i = 0; i < process02.length; i++) {
  //       logger.wtf('test01');
  //       List<String> readTransactionList = await getUseCaseHome.readTransactionList();
  //       logger.wtf('test02');
  //       if(!readTransactionList.contains(process02[i])){
  //         logger.wtf('test03');
  //         readTransactionList.add(process02[i]);
  //         logger.wtf('test04');
  //         getUseCaseHome.insertTransactionList(readTransactionList);
  //         logger.wtf('test05');
  //         _transactionList.add(process02[i]); //=> 한국이름임
  //         logger.wtf('test06');
  //       }else{
  //         logger.wtf('test07');
  //       }
  //     }
  //   }
  // }
}
