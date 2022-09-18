import 'package:project_b/data/entity/upbit/entity_current_info/entity_current_info.dart';
import 'package:project_b/data/entity/upbit/entity_market_code/entity_market_code.dart';

import '../../application/util/result.dart';
import '../../data/entity/share/entity_order_response/entity_order_response.dart';
import '../../data/entity/upbit/entity_account/entity_account.dart';
import '../../data/entity/upbit/entity_order_info/entity_order_info.dart';
import '../../data/entity/upbit/entity_orderbook/entity_orderbook.dart';
import '../../data/entity/upbit/entity_withdraw_info/entity_withdraw_info.dart';

abstract class UpBitRepository {

  Future<Result<List<EntityAccount>>> getMyWallet();

  Future<Result<List<EntityCurrentInfo>>> getCertainCoinInfo(
      {required List<String> assets});

  void depositMoney(int amount);

  Future<Result<EntityWithdrawInfo>> getWithdrawInfo();

  void withdrawMoney(int amount);

  Future<Result<List<EntityMarketCode>>> getTotalCoinList();

  Future<Result<List<EntityCurrentInfo>>> getTotalCoinInfo(
      {required List<EntityMarketCode> coinList});

  Future<Result<List<EntityOrderbook>>> getOrderBook(
      List<EntityMarketCode> marketCodeList);

  Future<Result<EntityOrderInfo>> getCoinOrderInfo(String market);

  Future<Result<EntityOrderResponse>> order(
      String market, bool bid, double price, double volume);

  Future<Result<EntityOrderResponse>> deleteOrder(String uuid);


}
