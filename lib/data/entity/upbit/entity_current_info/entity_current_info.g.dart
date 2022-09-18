// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_current_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntityCurrentInfo _$$_EntityCurrentInfoFromJson(Map<String, dynamic> json) =>
    _$_EntityCurrentInfo(
      market: json['market'] as String,
      tradeDate: json['trade_date'] as String,
      tradeTime: json['trade_time'] as String,
      tradeDateKst: json['trade_date_kst'] as String,
      tradeTimeKst: json['trade_time_kst'] as String,
      openingPrice: (json['opening_price'] as num).toDouble(),
      highPrice: (json['high_price'] as num).toDouble(),
      lowPrice: (json['low_price'] as num).toDouble(),
      tradePrice: (json['trade_price'] as num).toDouble(),
      prevClosingPrice: (json['prev_closing_price'] as num).toDouble(),
      change: json['change'] as String,
      changePrice: (json['change_price'] as num).toDouble(),
      changeRate: (json['change_rate'] as num).toDouble(),
      signedChangePrice: (json['signed_change_price'] as num).toDouble(),
      signedChangeRate: (json['signed_change_rate'] as num).toDouble(),
      tradeVolume: (json['trade_volume'] as num).toDouble(),
      accTradePrice: (json['acc_trade_price'] as num).toDouble(),
      accTradePrice24h: (json['acc_trade_price_24h'] as num).toDouble(),
      accTradeVolume: (json['acc_trade_volume'] as num).toDouble(),
      accTradeVolume24h: (json['acc_trade_volume_24h'] as num).toDouble(),
      highest52WeekPrice: (json['highest_52_week_price'] as num).toDouble(),
      highest52weekDate: json['highest_52_week_date'] as String,
      lowest52WeekPrice: (json['lowest_52_week_price'] as num).toDouble(),
      lowest52WeekDate: json['lowest_52_week_date'] as String,
      timestamp: json['timestamp'] as int,
    );

Map<String, dynamic> _$$_EntityCurrentInfoToJson(
        _$_EntityCurrentInfo instance) =>
    <String, dynamic>{
      'market': instance.market,
      'trade_date': instance.tradeDate,
      'trade_time': instance.tradeTime,
      'trade_date_kst': instance.tradeDateKst,
      'trade_time_kst': instance.tradeTimeKst,
      'opening_price': instance.openingPrice,
      'high_price': instance.highPrice,
      'low_price': instance.lowPrice,
      'trade_price': instance.tradePrice,
      'prev_closing_price': instance.prevClosingPrice,
      'change': instance.change,
      'change_price': instance.changePrice,
      'change_rate': instance.changeRate,
      'signed_change_price': instance.signedChangePrice,
      'signed_change_rate': instance.signedChangeRate,
      'trade_volume': instance.tradeVolume,
      'acc_trade_price': instance.accTradePrice,
      'acc_trade_price_24h': instance.accTradePrice24h,
      'acc_trade_volume': instance.accTradeVolume,
      'acc_trade_volume_24h': instance.accTradeVolume24h,
      'highest_52_week_price': instance.highest52WeekPrice,
      'highest_52_week_date': instance.highest52weekDate,
      'lowest_52_week_price': instance.lowest52WeekPrice,
      'lowest_52_week_date': instance.lowest52WeekDate,
      'timestamp': instance.timestamp,
    };
