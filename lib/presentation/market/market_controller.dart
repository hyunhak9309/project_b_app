import 'dart:async';

import 'package:get/get.dart';
import 'package:project_b/domain/model/model_mongo_coin_list/model_mongo_coin_list.dart';
import 'package:project_b/domain/model/model_up_bit_coin_list/model_up_bit_coin_list.dart';
import 'package:project_b/domain/model/model_up_bit_order_book/model_up_bit_order_book_list.dart';
import 'package:project_b/domain/use_case/use_case_market_record.dart';
import '../../data/entity/upbit/entity_market_code/entity_market_code.dart';
import '../../domain/use_case/use_case_market.dart';
import '../core_controller.dart';

class MarketController extends GetxController {
  MarketController(
      {required this.getUseCaseUpBit, required this.getUseCaseMarketRecord});

  final UseCaseMarket getUseCaseUpBit;
  final UseCaseMarketRecord getUseCaseMarketRecord;

  static MarketController get to => Get.find();

  final Rx<String> _runningTime = ("connecting".tr).obs;

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
      if (_runningTime.value != "connecting".tr) {
        if (_runningTime.value.split(':')[1] != '00' &&
            _runningTime.value.split(':')[2] == '00') {
          processPerMinute(DateTime.now());
        }
        if (_runningTime.value.split(':')[0] != '00' &&
            _runningTime.value.split(':')[1] == '00') {
          processPerHour(DateTime.now());
        }
      }
    });
  }

  void forInit(DateTime currentTime) async {
    once(_marketCode, (_) async {
      final getMarketCoinInfo =
          await getUseCaseUpBit.getMarketCoinInfo(_marketCode);
      getMarketCoinInfo.when(
          success: (v) {
            _upBitData.value = v;
          },
          error: (_) {});
    });

    once(_upBitData, (_) async {
      final getOrderBook = await getUseCaseUpBit.getOrderBook(
          _upBitData.value.tradePrice, _marketCode);
      getOrderBook.when(
          success: (v) {
            _analyzeOrderBook.value = v;
          },
          error: (_) {});
      final generateMinute2ndData = await getUseCaseMarketRecord.generateMinute2ndData(
          currentInfo: _upBitData.value.tradePrice, currentTime: currentTime);
      generateMinute2ndData.when(
          success: (v) {
            _mongoData.value = v;
          },
          error: (_) {});
    });

    final getMarketCodList = await getUseCaseUpBit.getMarketCodeList();
    getMarketCodList.when(
        success: (v) {
          _marketCode.value = v;
        },
        error: (_) {});
  }

  void processPerSecond(DateTime currentTime) async {
    _runningTime.value =
        CoreController.to.timer.elapsed.toString().split('.')[0]; // 앱 가동시간 최신화

    if (_upBitData.value.tradePrice.isNotEmpty) {
      final getMarketCoinInfo =
          await getUseCaseUpBit.getMarketCoinInfo(_marketCode);
      getMarketCoinInfo.when(
          success: (v) {
            _upBitData.value = v;
          },
          error: (_) {});
    }
    if (_upBitData.value.tradePrice.isNotEmpty) {
      getUseCaseMarketRecord.insertMarketInfoToDB(
          infoList: _upBitData.value.tradePrice, currentTime: currentTime);

      final getOrderBook = await getUseCaseUpBit.getOrderBook(
          _upBitData.value.tradePrice, _marketCode);
      getOrderBook.when(
          success: (v) {
            _analyzeOrderBook.value = v;
          },
          error: (_) {});
    }
  }

  void processPerMinute(DateTime currentTime) async {
    final getMarketCodList = await getUseCaseUpBit.getMarketCodeList();
    getMarketCodList.when(
        success: (v) {
          _marketCode.value = v;
        },
        error: (_) {});

    if (_upBitData.value.tradePrice.isNotEmpty) {
      final generateMinute2ndData = await getUseCaseMarketRecord.generateMinute2ndData(
          currentInfo: _upBitData.value.tradePrice, currentTime: currentTime);
      generateMinute2ndData.when(
          success: (v) {
            _mongoData.value = v;
          },
          error: (_) {});
    }
  }

  void processPerHour(DateTime currentTime) async {
    getUseCaseMarketRecord.deleteMarketInfoInDB(
        currentTime: currentTime); // 몽고디비 이전 데이터 삭제 처리
  }
}
