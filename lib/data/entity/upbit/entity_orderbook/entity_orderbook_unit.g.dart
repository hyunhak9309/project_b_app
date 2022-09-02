// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_orderbook_unit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntityOrderbookUnit _$$_EntityOrderbookUnitFromJson(
        Map<String, dynamic> json) =>
    _$_EntityOrderbookUnit(
      askPrice: (json['ask_price'] as num).toDouble(),
      bidPrice: (json['bid_price'] as num).toDouble(),
      askSize: (json['ask_size'] as num).toDouble(),
      bidSize: (json['bid_size'] as num).toDouble(),
    );

Map<String, dynamic> _$$_EntityOrderbookUnitToJson(
        _$_EntityOrderbookUnit instance) =>
    <String, dynamic>{
      'ask_price': instance.askPrice,
      'bid_price': instance.bidPrice,
      'ask_size': instance.askSize,
      'bid_size': instance.bidSize,
    };
