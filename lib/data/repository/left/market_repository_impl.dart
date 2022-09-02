import 'package:project_b/data/entity/upbit/entity_current_info.dart';
import 'package:project_b/data/entity/upbit/entity_market_code.dart';
import '../../../domain/repository/left/market_repository.dart';
import '../../data_source/market_server.dart';
import '../../entity/upbit/entity_orderbook/entity_orderbook.dart';

class MarketRepositoryImpl implements MarketRepository {
  MarketRepositoryImpl({required this.server});

  final MarketServer server;

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
      return process02.map((e) => EntityCurrentInfo.fromJson(e)).toList();
    } else {
      return [];
    }
  }

  @override
  Future<List<EntityOrderbook>> getOrderBook(List<EntityMarketCode> marketCodeList) async {
    var process01 = await server.getOrderBook(marketCodeList);
    if (process01.statusCode == 200) {
      List process02 = process01.body;
      return process02.map((e) => EntityOrderbook.fromJson(e)).toList();
    } else {
      return [];
    }
  }

}
