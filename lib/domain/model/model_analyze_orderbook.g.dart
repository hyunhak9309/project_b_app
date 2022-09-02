// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_analyze_orderbook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelAnalyzeOrderbook _$$_ModelAnalyzeOrderbookFromJson(
        Map<String, dynamic> json) =>
    _$_ModelAnalyzeOrderbook(
      tradePrice: (json['trade_price'] as num).toDouble(),
      askBidRatio: (json['ask_bid_ratio'] as num).toDouble(),
      oneToFiveAskBidRatio:
          (json['one_to_five_ask_bid_ratio'] as num).toDouble(),
      oneToFiveOfTotalAskRatio:
          (json['one_to_five_of_total_ask_ratio'] as num).toDouble(),
      oneToFiveOfTotalBidRatio:
          (json['one_to_five_of_total_bid_ratio'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ModelAnalyzeOrderbookToJson(
        _$_ModelAnalyzeOrderbook instance) =>
    <String, dynamic>{
      'trade_price': instance.tradePrice,
      'ask_bid_ratio': instance.askBidRatio,
      'one_to_five_ask_bid_ratio': instance.oneToFiveAskBidRatio,
      'one_to_five_of_total_ask_ratio': instance.oneToFiveOfTotalAskRatio,
      'one_to_five_of_total_bid_ratio': instance.oneToFiveOfTotalBidRatio,
    };
