import 'package:project_b/domain/model/model_analyze_orderbook.dart';
import 'package:project_b/domain/model/model_up_bit_coin_list.dart';
import 'package:project_b/domain/model/model_up_bit_order_book_list.dart';

import '../../../data/entity/upbit/entity_current_info.dart';
import '../../../data/entity/upbit/entity_market_code.dart';
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
    signedChangeRate
        .sort((b, a) => a.signedChangeRate.compareTo(b.signedChangeRate));

    List<EntityCurrentInfo> signedChangePrice = List.from(process01);
    signedChangePrice
        .sort((b, a) => a.signedChangePrice.compareTo(b.signedChangePrice));

    List<EntityCurrentInfo> accTradePrice24h = List.from(process01);
    accTradePrice24h
        .sort((b, a) => a.accTradePrice24h.compareTo(b.accTradePrice24h));

    List<EntityCurrentInfo> accTradeVolume24h = List.from(process01);
    accTradeVolume24h
        .sort((b, a) => a.accTradeVolume24h.compareTo(b.accTradeVolume24h));

    List<EntityCurrentInfo> market = List.from(process01);
    market.sort((a, b) => a.market.compareTo(b.market));

    return ModelUpBitCoinList(
        market: market,
        tradePrice: tradePrice,
        signedChangePrice: signedChangePrice,
        signedChangeRate: signedChangeRate,
        highPrice: highPrice,
        lowPrice: lowPrice,
        accTradePrice24h: accTradePrice24h,
        accTradeVolume24h: accTradeVolume24h);
  }

  Future<ModelUpBitOrderBookList> getOrderBook(
      List<EntityCurrentInfo> currentInfo,
      List<EntityMarketCode> marketCodeList) async {
    var process01 = await repository.getOrderBook(marketCodeList);
    var process02 = <ModelAnalyzeOrderbook>[];

     for (var element in process01) {
      var oneToFiveAskVolume = 0.0;
      var oneToFiveBidVolume = 0.0;

      for (var i = 0; i < 5; i++) {
        if (i < 5) {
          oneToFiveAskVolume += element.orderbookUnits[i].askSize;
          oneToFiveBidVolume += element.orderbookUnits[i].bidSize;
        }
      }

      process02.add(ModelAnalyzeOrderbook(
          market: marketCodeList
              .where((e) => e.market == element.market)
              .toList()[0]
              .koreanName,
          tradePrice: currentInfo
              .where((find) =>
                  find.market ==
                  marketCodeList
                      .where((e) => e.market == element.market)
                      .toList()[0]
                      .koreanName)
              .toList()[0]
              .tradePrice,
          askBidRatio: (element.totalBidSize / element.totalAskSize) * 100,
          oneToFiveAskBidRatio: (oneToFiveBidVolume / oneToFiveAskVolume) * 100,

          oneToFiveOfTotalAskRatio:
              (oneToFiveAskVolume / element.totalAskSize) * 100,
          oneToFiveOfTotalBidRatio:
              (oneToFiveBidVolume / element.totalBidSize) * 100
      ));
    }

    List<ModelAnalyzeOrderbook> tradePrice = List.from(process02);
    tradePrice.sort((b, a) => a.tradePrice.compareTo(b.tradePrice));

    List<ModelAnalyzeOrderbook> askBidRatio = List.from(process02);
    askBidRatio.sort((b, a) => a.askBidRatio.compareTo(b.askBidRatio));

    List<ModelAnalyzeOrderbook> oneToFiveAskBidRatio = List.from(process02);
    oneToFiveAskBidRatio.sort(
        (b, a) => a.oneToFiveAskBidRatio.compareTo(b.oneToFiveAskBidRatio));

    List<ModelAnalyzeOrderbook> oneToFiveOfTotalAskRatio = List.from(process02);
    oneToFiveOfTotalAskRatio.sort((b, a) => a.oneToFiveOfTotalAskRatio.compareTo(b.oneToFiveOfTotalAskRatio));


    List<ModelAnalyzeOrderbook> oneToFiveOfTotalBidRatio = List.from(process02);
    oneToFiveOfTotalBidRatio.sort((b, a) => a.oneToFiveOfTotalBidRatio.compareTo(b.oneToFiveOfTotalBidRatio));

    List<ModelAnalyzeOrderbook> market = List.from(process02);
    market.sort((a, b) => a.market.compareTo(b.market));

    return ModelUpBitOrderBookList(
        market: market,
        tradePrice: tradePrice,
        askBidRatio: askBidRatio,
        oneToFiveAskBidRatio: oneToFiveAskBidRatio,
        oneToFiveOfTotalAskRatio: oneToFiveOfTotalAskRatio,
        oneToFiveOfTotalBidRatio: oneToFiveOfTotalBidRatio);
  }
}
