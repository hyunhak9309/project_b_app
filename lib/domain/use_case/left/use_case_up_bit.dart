import 'package:project_b/domain/model/model_up_bit_coin_list.dart';

import '../../../data/entity/upbit/entity_current_info.dart';
import '../../../data/entity/upbit/entity_market_code.dart';
import '../../../main.dart';
import '../../repository/left/market_repository.dart';

class UseCaseUpBit {
  final MarketRepository repository;

  UseCaseUpBit({required this.repository});

  Future<List<EntityMarketCode>> getMarketCodeList() async {
    return await repository.getCoinListFromUpBit();
  }

  Future<ModelUpBitCoinList> getMarketCoinInfo(
      List<EntityMarketCode> marketCodeList) async {
    var process01 =
        await repository.getCoinInfoFromUpBit(coinList: marketCodeList);

    List<EntityCurrentInfo> tradePrice = List.from(process01);
    tradePrice.sort((b, a) => a.tradePrice.compareTo(b.tradePrice));

    List<EntityCurrentInfo> highPrice = List.from(process01);
    highPrice.sort((b, a) => a.highPrice.compareTo(b.highPrice));

    List<EntityCurrentInfo> lowPrice = List.from(process01);
    lowPrice.sort((b, a) => a.lowPrice.compareTo(b.lowPrice));

    List<EntityCurrentInfo> signedChangeRate = List.from(process01);
    signedChangeRate.sort((b, a) => a.signedChangeRate.compareTo(b.signedChangeRate));

    List<EntityCurrentInfo> signedChangePrice = List.from(process01);
    signedChangePrice
        .sort((b, a) => a.signedChangePrice.compareTo(b.signedChangePrice));

    List<EntityCurrentInfo> accTradePrice24h = List.from(process01);
    accTradePrice24h.sort((b, a) => a.accTradePrice24h.compareTo(b.accTradePrice24h));

    List<EntityCurrentInfo> accTradeVolume24h = List.from(process01);
    accTradeVolume24h
        .sort((b, a) => a.accTradeVolume24h.compareTo(b.accTradeVolume24h));

    return ModelUpBitCoinList(
        tradePrice: tradePrice,
        signedChangePrice: signedChangePrice,
        signedChangeRate: signedChangeRate,
        highPrice: highPrice,
        lowPrice: lowPrice,
        accTradePrice24h: accTradePrice24h,
        accTradeVolume24h: accTradeVolume24h);
  }

  void getOrderBook(List<EntityCurrentInfo> currentInfo, List<EntityMarketCode> marketCodeList)async{
    var process01 = await repository.getOrderBook(marketCodeList);
    logger.w(process01);
  }

}
