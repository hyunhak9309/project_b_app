// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_up_bit_coin_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelUpBitCoinList _$$_ModelUpBitCoinListFromJson(
        Map<String, dynamic> json) =>
    _$_ModelUpBitCoinList(
      tradePrice: (json['trade_price'] as List<dynamic>)
          .map((e) => EntityCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      signedChangePrice: (json['signed_change_price'] as List<dynamic>)
          .map((e) => EntityCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      signedChangeRate: (json['signed_change_rate'] as List<dynamic>)
          .map((e) => EntityCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      highPrice: (json['high_price'] as List<dynamic>)
          .map((e) => EntityCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      lowPrice: (json['low_price'] as List<dynamic>)
          .map((e) => EntityCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      accTradePrice24h: (json['acc_trade_price_24h'] as List<dynamic>)
          .map((e) => EntityCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      accTradeVolume24h: (json['acc_trade_volume_24h'] as List<dynamic>)
          .map((e) => EntityCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ModelUpBitCoinListToJson(
        _$_ModelUpBitCoinList instance) =>
    <String, dynamic>{
      'trade_price': instance.tradePrice,
      'signed_change_price': instance.signedChangePrice,
      'signed_change_rate': instance.signedChangeRate,
      'high_price': instance.highPrice,
      'low_price': instance.lowPrice,
      'acc_trade_price_24h': instance.accTradePrice24h,
      'acc_trade_volume_24h': instance.accTradeVolume24h,
    };
