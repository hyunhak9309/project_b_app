import 'package:project_b/data/entity/upbit/entity_current_info.dart';
import 'package:project_b/data/entity/upbit/entity_market_code.dart';

import '../../../data/entity/upbit/entity_orderbook/entity_orderbook.dart';

abstract class MarketRepository {
  Future<List<EntityMarketCode>> getCoinListFromUpBit();

  Future<List<EntityCurrentInfo>> getCoinInfoFromUpBit(
      {required List<EntityMarketCode> coinList});

  Future<List<EntityOrderbook>> getOrderBook(List<EntityMarketCode> marketCodeList);
}
