// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_mongo_coin_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelMongoCoinList _$$_ModelMongoCoinListFromJson(
        Map<String, dynamic> json) =>
    _$_ModelMongoCoinList(
      tradePrice: (json['trade_price'] as List<dynamic>)
          .map((e) => Model2ndCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      signedChangePrice: (json['signed_change_price'] as List<dynamic>)
          .map((e) => Model2ndCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      signedChangeRate: (json['signed_change_rate'] as List<dynamic>)
          .map((e) => Model2ndCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      accTradePrice: (json['acc_trade_price'] as List<dynamic>)
          .map((e) => Model2ndCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      accTradeVolume: (json['acc_trade_volume'] as List<dynamic>)
          .map((e) => Model2ndCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ModelMongoCoinListToJson(
        _$_ModelMongoCoinList instance) =>
    <String, dynamic>{
      'trade_price': instance.tradePrice,
      'signed_change_price': instance.signedChangePrice,
      'signed_change_rate': instance.signedChangeRate,
      'acc_trade_price': instance.accTradePrice,
      'acc_trade_volume': instance.accTradeVolume,
    };
