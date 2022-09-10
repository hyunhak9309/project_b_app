// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_mongo_coin_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelMongoCoinList _$$_ModelMongoCoinListFromJson(
        Map<String, dynamic> json) =>
    _$_ModelMongoCoinList(
      market: (json['market'] as List<dynamic>)
          .map((e) => Model2ndCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      tradePrice: (json['tradePrice'] as List<dynamic>)
          .map((e) => Model2ndCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      signedChangePrice: (json['signedChangePrice'] as List<dynamic>)
          .map((e) => Model2ndCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      signedChangeRate: (json['signedChangeRate'] as List<dynamic>)
          .map((e) => Model2ndCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      accTradePrice: (json['accTradePrice'] as List<dynamic>)
          .map((e) => Model2ndCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      accTradeVolume: (json['accTradeVolume'] as List<dynamic>)
          .map((e) => Model2ndCurrentInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ModelMongoCoinListToJson(
        _$_ModelMongoCoinList instance) =>
    <String, dynamic>{
      'market': instance.market,
      'tradePrice': instance.tradePrice,
      'signedChangePrice': instance.signedChangePrice,
      'signedChangeRate': instance.signedChangeRate,
      'accTradePrice': instance.accTradePrice,
      'accTradeVolume': instance.accTradeVolume,
    };
