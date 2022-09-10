// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_up_bit_coin_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelUpBitCoinList _$$_ModelUpBitCoinListFromJson(
        Map<String, dynamic> json) =>
    _$_ModelUpBitCoinList(
      market: (json['market'] as List<dynamic>)
          .map((e) => EntityCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      tradePrice: (json['tradePrice'] as List<dynamic>)
          .map((e) => EntityCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      signedChangePrice: (json['signedChangePrice'] as List<dynamic>)
          .map((e) => EntityCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      signedChangeRate: (json['signedChangeRate'] as List<dynamic>)
          .map((e) => EntityCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      highPrice: (json['highPrice'] as List<dynamic>)
          .map((e) => EntityCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      lowPrice: (json['lowPrice'] as List<dynamic>)
          .map((e) => EntityCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      accTradePrice24h: (json['accTradePrice24h'] as List<dynamic>)
          .map((e) => EntityCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      accTradeVolume24h: (json['accTradeVolume24h'] as List<dynamic>)
          .map((e) => EntityCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ModelUpBitCoinListToJson(
        _$_ModelUpBitCoinList instance) =>
    <String, dynamic>{
      'market': instance.market,
      'tradePrice': instance.tradePrice,
      'signedChangePrice': instance.signedChangePrice,
      'signedChangeRate': instance.signedChangeRate,
      'highPrice': instance.highPrice,
      'lowPrice': instance.lowPrice,
      'accTradePrice24h': instance.accTradePrice24h,
      'accTradeVolume24h': instance.accTradeVolume24h,
    };
