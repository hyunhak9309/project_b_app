// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_2nd_current_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Model2ndCurrentInfo _$$_Model2ndCurrentInfoFromJson(
        Map<String, dynamic> json) =>
    _$_Model2ndCurrentInfo(
      market: json['market'] as String,
      tradePrice: (json['trade_price'] as num).toDouble(),
      signedChangePrice: (json['signed_change_price'] as num).toDouble(),
      signedChangeRate: (json['signed_change_rate'] as num).toDouble(),
      accTradePrice: (json['acc_trade_price'] as num).toDouble(),
      accTradeVolume: (json['acc_trade_volume'] as num).toDouble(),
      standard: json['standard'] as String,
      time: DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$$_Model2ndCurrentInfoToJson(
        _$_Model2ndCurrentInfo instance) =>
    <String, dynamic>{
      'market': instance.market,
      'trade_price': instance.tradePrice,
      'signed_change_price': instance.signedChangePrice,
      'signed_change_rate': instance.signedChangeRate,
      'acc_trade_price': instance.accTradePrice,
      'acc_trade_volume': instance.accTradeVolume,
      'standard': instance.standard,
      'time': instance.time.toIso8601String(),
    };
