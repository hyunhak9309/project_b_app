import 'package:project_b/data/entity/upbit/entity_current_info/entity_current_info.dart';
import 'package:project_b/data/entity/upbit/entity_market_code/entity_market_code.dart';
import '../../application/util/result.dart';
import '../../domain/repository/up_bit_repository.dart';
import '../data_source/up_bit_server.dart';
import '../entity/share/entity_order_response/entity_order_response.dart';
import '../entity/upbit/entity_account/entity_account.dart';
import '../entity/upbit/entity_order_info/entity_order_info.dart';
import '../entity/upbit/entity_orderbook/entity_orderbook.dart';
import '../entity/upbit/entity_withdraw_info/entity_withdraw_info.dart';

class UpBitRepositoryImpl implements UpBitRepository {
  UpBitRepositoryImpl({required this.server});

  final UpBitServer server;

  @override
  Future<Result<List<EntityAccount>>> getMyWallet() async {
    final process01 = await server.getAccountInfo();
    if (process01.statusCode == 200) {
      List process02 = process01.body;
      return Result.success(
          process02.map((e) => EntityAccount.fromJson(e)).toList());
    } else {
      return const Result.error('UpBit Error');
    }
  }

  @override
  Future<Result<List<EntityCurrentInfo>>> getCertainCoinInfo(
      {required List<String> assets}) async {
    final process01 = await server.getCoinInfo(assets: assets);
    if (process01.statusCode == 200) {
      List process02 = process01.body; //=>list 반환
      return Result.success(
          process02.map((e) => EntityCurrentInfo.fromJson(e)).toList());
    } else {
      return const Result.error('UpBit Error');
    }
  }

  @override
  void depositMoney(int amount) {
    server.depositMoney(amount);
  }

  @override
  Future<Result<EntityWithdrawInfo>> getWithdrawInfo() async {
    final process01 = await server.getWithdrawInfo();
    if (process01.statusCode == 200) {
      return Result.success(EntityWithdrawInfo.fromJson(process01.body));
    } else {
      return const Result.error('UpBit Error');
    }
  }

  @override
  void withdrawMoney(int amount) async {
    await server.withdrawMoney(amount);
  }

  @override
  Future<Result<List<EntityMarketCode>>> getTotalCoinList() async {
    final process01 = await server.getMarketCoinList();
    if (process01.statusCode == 200) {
      List process02 = process01.body;
      List<EntityMarketCode> result =
          process02.map((e) => EntityMarketCode.fromJson(e)).toList();
      result.removeWhere((element) =>
          element.marketWarning == "CAUTION" ||
          (element.market).substring(0, 3) != 'KRW');
      return Result.success(result);
    } else {
      return const Result.error('UpBit Error');
    }
  }

  @override
  Future<Result<List<EntityCurrentInfo>>> getTotalCoinInfo(
      {required List<EntityMarketCode> coinList}) async {
    final process01 = await server.getCoinInfo(coinList: coinList);
    if (process01.statusCode == 200) {
      List process02 = process01.body;
      final result = process02.map((e) {
        final p1 = EntityCurrentInfo.fromJson(e);
        final p2 = EntityCurrentInfo(
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
      return Result.success(result);
    } else {
      return const Result.error('UpBit Error');
    }
  }

  @override
  Future<Result<List<EntityOrderbook>>> getOrderBook(
      List<EntityMarketCode> marketCodeList) async {
    final process01 = await server.getOrderBook(marketCodeList);
    if (process01.statusCode == 200) {
      List process02 = process01.body;
      return Result.success(
          process02.map((e) => EntityOrderbook.fromJson(e)).toList());
    } else {
      return const Result.error('UpBit Error');
    }
  }

  @override
  Future<Result<EntityOrderInfo>> getCoinOrderInfo(String market) async {
    final result = await server.getOrderInfo(market);
    if (result.statusCode == 200) {
      return Result.success(EntityOrderInfo.fromJson(result.body));
    } else {
      return const Result.error('UpBit Error');
    }
  }

  @override
  Future<Result<EntityOrderResponse>> order(
      String market, bool bid, double price, double volume) async {
    final process01 = await server.order(market, bid, price, volume);
    if (process01.statusCode == 201) {
      return Result.success(EntityOrderResponse.fromJson(process01.body));
    } else {
      return const Result.error('UpBit Error');
    }
  }

  @override
  Future<Result<EntityOrderResponse>> deleteOrder(String uuid) async {
    final process01 = await server.deleteOrder(uuid);
    if (process01.statusCode == 200) {
      return Result.success(EntityOrderResponse.fromJson(process01.body));
    } else {
      return const Result.error('UpBit Error');
    }
  }
}
