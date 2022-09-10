// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_up_bit_order_book_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelUpBitOrderBookList _$$_ModelUpBitOrderBookListFromJson(
        Map<String, dynamic> json) =>
    _$_ModelUpBitOrderBookList(
      market: (json['market'] as List<dynamic>)
          .map((e) => ModelAnalyzeOrderbook.fromJson(e as Map<String, dynamic>))
          .toList(),
      tradePrice: (json['tradePrice'] as List<dynamic>)
          .map((e) => ModelAnalyzeOrderbook.fromJson(e as Map<String, dynamic>))
          .toList(),
      askBidRatio: (json['askBidRatio'] as List<dynamic>)
          .map((e) => ModelAnalyzeOrderbook.fromJson(e as Map<String, dynamic>))
          .toList(),
      oneToFiveAskBidRatio: (json['oneToFiveAskBidRatio'] as List<dynamic>)
          .map((e) => ModelAnalyzeOrderbook.fromJson(e as Map<String, dynamic>))
          .toList(),
      oneToFiveOfTotalAskRatio: (json['oneToFiveOfTotalAskRatio']
              as List<dynamic>)
          .map((e) => ModelAnalyzeOrderbook.fromJson(e as Map<String, dynamic>))
          .toList(),
      oneToFiveOfTotalBidRatio: (json['oneToFiveOfTotalBidRatio']
              as List<dynamic>)
          .map((e) => ModelAnalyzeOrderbook.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ModelUpBitOrderBookListToJson(
        _$_ModelUpBitOrderBookList instance) =>
    <String, dynamic>{
      'market': instance.market,
      'tradePrice': instance.tradePrice,
      'askBidRatio': instance.askBidRatio,
      'oneToFiveAskBidRatio': instance.oneToFiveAskBidRatio,
      'oneToFiveOfTotalAskRatio': instance.oneToFiveOfTotalAskRatio,
      'oneToFiveOfTotalBidRatio': instance.oneToFiveOfTotalBidRatio,
    };
