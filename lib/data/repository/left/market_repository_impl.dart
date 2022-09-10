import 'package:project_b/data/entity/upbit/entity_current_info.dart';
import 'package:project_b/data/entity/upbit/entity_market_code.dart';
import '../../../domain/repository/left/market_repository.dart';
import '../../data_source/up_bit_server.dart';
import '../../entity/upbit/entity_orderbook/entity_orderbook.dart';

class MarketRepositoryImpl implements MarketRepository {
  MarketRepositoryImpl({required this.server});

  final UpBitServer server;

  @override
  Future<List<EntityMarketCode>> getCoinListFromUpBit() async {
    var process01 = await server.getCoinList();
    if (process01.statusCode == 200) {
      List process02 = process01.body;
      List<EntityMarketCode> result =
          process02.map((e) => EntityMarketCode.fromJson(e)).toList();
      result.removeWhere((element) =>
          element.marketWarning == "CAUTION" ||
          (element.market).substring(0, 3) != 'KRW');
      return result;
    } else {
      return [];
    }
  }

  @override
  Future<List<EntityCurrentInfo>> getCoinInfoFromUpBit(
      {required List<EntityMarketCode> coinList}) async {
    var process01 = await server.getCoinInfo(coinList);
    if (process01.statusCode == 200) {
      List process02 = process01.body;
      var result = process02.map((e) {
        var p1 = EntityCurrentInfo.fromJson(e);
        var p2 = EntityCurrentInfo(
            market: coinList
                .where((element) => element.market == p1.market)
                .toList()[0]
                .koreanName,
            tradeDate: p1.tradeDate,
            tradeTime: p1.tradeTime,
            tradeDateKst: p1.tradeDateKst,
            tradeTimeKst: p1.tradeTimeKst,
            openingPrice: p1.openingPrice,
            highPrice: p1.highPrice,
            lowPrice: p1.lowPrice,
            tradePrice: p1.tradePrice,
            prevClosingPrice: p1.prevClosingPrice,
            change: p1.change,
            changePrice: p1.changePrice,
            changeRate: p1.changeRate,
            signedChangePrice: p1.signedChangePrice,
            signedChangeRate: p1.signedChangeRate,
            tradeVolume: p1.tradeVolume,
            accTradePrice: p1.accTradePrice,
            accTradePrice24h: p1.accTradePrice24h,
            accTradeVolume: p1.accTradeVolume,
            accTradeVolume24h: p1.accTradeVolume24h,
            highest52WeekPrice: p1.highest52WeekPrice,
            highest52weekDate: p1.highest52weekDate,
            lowest52WeekPrice: p1.lowest52WeekPrice,
            lowest52WeekDate: p1.lowest52WeekDate,
            timestamp: p1.timestamp);
        return p2;
      }).toList();
      return result;
    } else {
      return [];
    }
  }

  @override
  Future<List<EntityOrderbook>> getOrderBook(
      List<EntityMarketCode> marketCodeList) async {
    var process01 = await server.getOrderBook(marketCodeList);
    if (process01.statusCode == 200) {
      List process02 = process01.body;
      return process02.map((e) => EntityOrderbook.fromJson(e)).toList();
    } else {
      return [];
    }
  }
}
