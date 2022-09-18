import 'package:get/get.dart';
import 'package:project_b/domain/model/model_2nd_current_info/model_2nd_current_info.dart';
import 'package:project_b/domain/model/model_mongo_coin_list/model_mongo_coin_list.dart';
import '../../application/util/result.dart';
import '../../data/entity/mongodb/entity_market_info_for_save/entity_market_info_for_save.dart';
import '../../data/entity/upbit/entity_current_info/entity_current_info.dart';
import '../repository/mongo_repository.dart';

class UseCaseMarketRecord {
  final MongoRepository repository;

  UseCaseMarketRecord({required this.repository});

  void insertMarketInfoToDB(
      {required List<EntityCurrentInfo> infoList,
      required DateTime currentTime}) {
    final time = DateTime(currentTime.year, currentTime.month, currentTime.day,
        currentTime.hour, currentTime.minute, currentTime.second);

    final list = infoList.map((e) => e.toJson()).toList();

    final marketInfo =
        EntityMarketInfoForSave(marketInfo: list, time: time, id: null);
    repository.insertMarketInfoToDB(marketInfo: marketInfo);
  }

  void deleteMarketInfoInDB({required DateTime currentTime}) {
    final time = DateTime(currentTime.year, currentTime.month,
        currentTime.day - 1, currentTime.hour, currentTime.minute);
    repository.deleteMarketInfoInDB(time: time); // 24시간 전 정보는 전체 삭제
  }

  Future<Result<ModelMongoCoinList>> generateMinute2ndData(
      {required List<EntityCurrentInfo> currentInfo,
      required DateTime currentTime}) async {
    final time = DateTime(currentTime.year, currentTime.month, currentTime.day,
        currentTime.hour, currentTime.minute - 1, currentTime.second);

    final process01 = await repository.getCoinInfoFromMongo(time: time); // 이전 데이터
    final process02 = <Model2ndCurrentInfo>[]; // 빈데이터

    process01.when(success: (data) {
      for (var element in currentInfo) {
        List<EntityCurrentInfo> beforeData = data
            .where((beforeElement) => beforeElement.market == element.market)
            .toList();
        if (beforeData.isNotEmpty) {
          final data = Model2ndCurrentInfo(
              market: beforeData[0].market,
              tradePrice: element.tradePrice,
              signedChangePrice: element.tradePrice - beforeData[0].tradePrice,
              signedChangeRate:
              ((element.tradePrice / beforeData[0].tradePrice) - 1) * 100,
              accTradePrice: element.accTradePrice - beforeData[0].accTradePrice,
              accTradeVolume:
              element.accTradeVolume - beforeData[0].accTradeVolume,
              standard: '1m'.tr,
              time: currentTime);
          process02.add(data);
        }
      }
    }, error: (e) => Result.error(e));

    List<Model2ndCurrentInfo> tradePrice = List.from(process02);
    tradePrice.sort((b, a) => a.tradePrice.compareTo(b.tradePrice));

    List<Model2ndCurrentInfo> signedChangePrice = List.from(process02);
    signedChangePrice
        .sort((b, a) => a.signedChangePrice.compareTo(b.signedChangePrice));

    List<Model2ndCurrentInfo> signedChangeRate = List.from(process02);
    signedChangeRate
        .sort((b, a) => a.signedChangeRate.compareTo(b.signedChangeRate));

    List<Model2ndCurrentInfo> accTradePrice = List.from(process02);
    accTradePrice.sort((b, a) => a.accTradePrice.compareTo(b.accTradePrice));

    List<Model2ndCurrentInfo> accTradeVolume = List.from(process02);
    accTradeVolume.sort((b, a) => a.accTradeVolume.compareTo(b.accTradeVolume));

    List<Model2ndCurrentInfo> market = List.from(process02);
    market.sort((a, b) => a.market.compareTo(b.market));

    return Result.success(ModelMongoCoinList(
        market: market,
        tradePrice: tradePrice,
        signedChangePrice: signedChangePrice,
        signedChangeRate: signedChangeRate,
        accTradePrice: accTradePrice,
        accTradeVolume: accTradeVolume));
  }
}
