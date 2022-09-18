// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_analyze_orderbook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelAnalyzeOrderbook _$$_ModelAnalyzeOrderbookFromJson(
        Map<String, dynamic> json) =>
    _$_ModelAnalyzeOrderbook(
      market: json['market'] as String,
      tradePrice: (json['tradePrice'] as num).toDouble(),
      askBidRatio: (json['askBidRatio'] as num).toDouble(),
      oneToFiveAskBidRatio: (json['oneToFiveAskBidRatio'] as num).toDouble(),
      oneToFiveOfTotalAskRatio:
          (json['oneToFiveOfTotalAskRatio'] as num).toDouble(),
      oneToFiveOfTotalBidRatio:
          (json['oneToFiveOfTotalBidRatio'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ModelAnalyzeOrderbookToJson(
        _$_ModelAnalyzeOrderbook instance) =>
    <String, dynamic>{
      'market': instance.market,
      'tradePrice': instance.tradePrice,
      'askBidRatio': instance.askBidRatio,
      'oneToFiveAskBidRatio': instance.oneToFiveAskBidRatio,
      'oneToFiveOfTotalAskRatio': instance.oneToFiveOfTotalAskRatio,
      'oneToFiveOfTotalBidRatio': instance.oneToFiveOfTotalBidRatio,
    };
