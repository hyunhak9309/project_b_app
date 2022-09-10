import 'dart:async';

import 'package:get/get.dart';
import 'package:project_b/domain/model/model_mongo_coin_list.dart';
import 'package:project_b/domain/model/model_up_bit_coin_list.dart';
import 'package:project_b/domain/model/model_up_bit_order_book_list.dart';
import 'package:project_b/domain/use_case/left/use_case_mongo.dart';
import 'package:project_b/presentation/center/home_controller.dart';
import '../../data/entity/upbit/entity_market_code.dart';
import '../../domain/use_case/left/use_case_up_bit.dart';
import '../../main.dart';
import '../right/right_controller.dart';

class LeftController extends GetxController {
  LeftController(
      {required this.getUseCaseUpBit, required this.getUseCaseMongo});

  final UseCaseUpBit getUseCaseUpBit;
  final UseCaseMongo getUseCaseMongo;

  static LeftController get to => Get.find();

  final RxList<EntityMarketCode> _marketCode = <EntityMarketCode>[].obs;
  final Rx<ModelUpBitCoinList> _upBitData = ModelUpBitCoinList(
      market: [],
      tradePrice: [],
      signedChangePrice: [],
      signedChangeRate: [],
      highPrice: [],
      lowPrice: [],
      accTradePrice24h: [],
      accTradeVolume24h: []).obs;

  final Rx<ModelMongoCoinList> _mongoData = ModelMongoCoinList(
      market: [],
      tradePrice: [],
      signedChangePrice: [],
      signedChangeRate: [],
      accTradePrice: [],
      accTradeVolume: []).obs;

  final Rx<ModelUpBitOrderBookList> _analyzeOrderBook = ModelUpBitOrderBookList(
    market: [],
    tradePrice: [],
    askBidRatio: [],
    oneToFiveAskBidRatio: [],
    oneToFiveOfTotalAskRatio: [],
    oneToFiveOfTotalBidRatio: [],
  ).obs;

  RxList<EntityMarketCode> get marketCode => _marketCode;

  Rx<ModelUpBitCoinList> get upBitData => _upBitData;

  Rx<ModelMongoCoinList> get mongoData => _mongoData;

  Rx<ModelUpBitOrderBookList> get analyzeOrderBook => _analyzeOrderBook;

  @override
  void onInit() {
    super.onInit();
    forInit(DateTime.now());

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

  void forInit(DateTime currentTime) async {
    _marketCode.value = await getUseCaseUpBit.getMarketCodeList();
    once(_marketCode, (_) async {
      _upBitData.value = await getUseCaseUpBit.getMarketCoinInfo(_marketCode);
      once(_upBitData, (_) async {
        _analyzeOrderBook.value = await getUseCaseUpBit.getOrderBook(
            _upBitData.value.tradePrice, _marketCode);
        _mongoData.value = await getUseCaseMongo.generateMinute2ndData(
            currentInfo: _upBitData.value.tradePrice, currentTime: currentTime);
      });
    });
  }

  void processPerSecond(DateTime currentTime) async {
    if (_marketCode.isNotEmpty) {
      _upBitData.value = await getUseCaseUpBit.getMarketCoinInfo(_marketCode);
    }
    if (_upBitData.value.tradePrice.isNotEmpty) {
      getUseCaseMongo.insertMarketInfoToDB(
          infoList: _upBitData.value.tradePrice, currentTime: currentTime);
      _analyzeOrderBook.value = await getUseCaseUpBit.getOrderBook(
          _upBitData.value.tradePrice, _marketCode);
    }
  }

  void processPerMinute(DateTime currentTime) async {
    if (_upBitData.value.tradePrice.isNotEmpty) {
      _mongoData.value = await getUseCaseMongo.generateMinute2ndData(
          currentInfo: _upBitData.value.tradePrice, currentTime: currentTime);
    }
  }

  void processPerHour(DateTime currentTime) async {
    _marketCode.value =
        await getUseCaseUpBit.getMarketCodeList(); // 1시간마다 마켓 코드 최신화
    getUseCaseMongo.deleteMarketInfoInDB(
        currentTime: currentTime); // 몽고디비 이전 데이터 삭제 처리
  }
}
