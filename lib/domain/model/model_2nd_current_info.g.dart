// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_2nd_current_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Model2ndCurrentInfo _$$_Model2ndCurrentInfoFromJson(
        Map<String, dynamic> json) =>
    _$_Model2ndCurrentInfo(
      market: json['market'] as String,
      tradePrice: (json['tradePrice'] as num).toDouble(),
      signedChangePrice: (json['signedChangePrice'] as num).toDouble(),
      signedChangeRate: (json['signedChangeRate'] as num).toDouble(),
      accTradePrice: (json['accTradePrice'] as num).toDouble(),
      accTradeVolume: (json['accTradeVolume'] as num).toDouble(),
      standard: json['standard'] as String,
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$_Model2ndCurrentInfoToJson(
        _$_Model2ndCurrentInfo instance) =>
    <String, dynamic>{
      'market': instance.market,
      'tradePrice': instance.tradePrice,
      'signedChangePrice': instance.signedChangePrice,
      'signedChangeRate': instance.signedChangeRate,
      'accTradePrice': instance.accTradePrice,
      'accTradeVolume': instance.accTradeVolume,
      'standard': instance.standard,
      'time': instance.time.toIso8601String(),
    };
