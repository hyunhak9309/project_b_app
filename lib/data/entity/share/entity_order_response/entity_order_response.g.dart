// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntityOrderResponse _$$_EntityOrderResponseFromJson(
        Map<String, dynamic> json) =>
    _$_EntityOrderResponse(
      uuid: json['uuid'] as String,
      side: json['side'] as String,
      ordType: json['ord_type'] as String,
      price: json['price'] as String,
      state: json['state'] as String,
      createdAt: json['created_at'] as String,
      volume: json['volume'] as String,
      market: json['market'] as String,
      remainingVolume: json['remaining_volume'] as String,
      reservedFee: json['reserved_fee'] as String,
      remainingFee: json['remaining_fee'] as String,
      paidFee: json['paid_fee'] as String,
      locked: json['locked'] as String,
      executedVolume: json['executed_volume'] as String,
      tradesCount: json['trades_count'] as int,
    );

Map<String, dynamic> _$$_EntityOrderResponseToJson(
        _$_EntityOrderResponse instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'side': instance.side,
      'ord_type': instance.ordType,
      'price': instance.price,
      'state': instance.state,
      'created_at': instance.createdAt,
      'volume': instance.volume,
      'market': instance.market,
      'remaining_volume': instance.remainingVolume,
      'reserved_fee': instance.reservedFee,
      'remaining_fee': instance.remainingFee,
      'paid_fee': instance.paidFee,
      'locked': instance.locked,
      'executed_volume': instance.executedVolume,
      'trades_count': instance.tradesCount,
    };
