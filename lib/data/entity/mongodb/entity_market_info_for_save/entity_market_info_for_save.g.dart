// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_market_info_for_save.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntityMarketInfoForSave _$$_EntityMarketInfoForSaveFromJson(
        Map<String, dynamic> json) =>
    _$_EntityMarketInfoForSave(
      marketInfo: json['market_info'] as List<dynamic>,
      time: const TimestampConverter().fromJson(json['time'] as DateTime),
      id: _$JsonConverterFromJson<ObjectId, ObjectId>(
          json['_id'], const ObjectIdConverter().fromJson),
    );

Map<String, dynamic> _$$_EntityMarketInfoForSaveToJson(
        _$_EntityMarketInfoForSave instance) =>
    <String, dynamic>{
      'market_info': instance.marketInfo,
      'time': const TimestampConverter().toJson(instance.time),
      '_id': _$JsonConverterToJson<ObjectId, ObjectId>(
          instance.id, const ObjectIdConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
