// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_orderbook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntityOrderbook _$$_EntityOrderbookFromJson(Map<String, dynamic> json) =>
    _$_EntityOrderbook(
      market: json['market'] as String,
      timestamp: json['timestamp'] as int,
      totalAskSize: (json['total_ask_size'] as num).toDouble(),
      totalBidSize: (json['total_bid_size'] as num).toDouble(),
      orderbookUnits: (json['orderbook_units'] as List<dynamic>)
          .map((e) => EntityOrderbookUnit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EntityOrderbookToJson(_$_EntityOrderbook instance) =>
    <String, dynamic>{
      'market': instance.market,
      'timestamp': instance.timestamp,
      'total_ask_size': instance.totalAskSize,
      'total_bid_size': instance.totalBidSize,
      'orderbook_units': instance.orderbookUnits,
    };
