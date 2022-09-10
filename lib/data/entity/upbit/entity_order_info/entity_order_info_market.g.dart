// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_order_info_market.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntityOrderInfoMarket _$$_EntityOrderInfoMarketFromJson(
        Map<String, dynamic> json) =>
    _$_EntityOrderInfoMarket(
      id: json['id'] as String,
      name: json['name'] as String,
      orderTypes: (json['order_types'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      orderSides: (json['order_sides'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      bid: EntityOrderInfoMarketBid.fromJson(
          json['bid'] as Map<String, dynamic>),
      ask: EntityOrderInfoMarketAsk.fromJson(
          json['ask'] as Map<String, dynamic>),
      maxTotal: json['max_total'] as String,
      state: json['state'] as String,
    );

Map<String, dynamic> _$$_EntityOrderInfoMarketToJson(
        _$_EntityOrderInfoMarket instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'order_types': instance.orderTypes,
      'order_sides': instance.orderSides,
      'bid': instance.bid,
      'ask': instance.ask,
      'max_total': instance.maxTotal,
      'state': instance.state,
    };
