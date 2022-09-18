// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_current_asset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntityCurrentAsset _$$_EntityCurrentAssetFromJson(
        Map<String, dynamic> json) =>
    _$_EntityCurrentAsset(
      totalAmount: (json['total_amount'] as num).toDouble(),
      time: const TimestampConverter().fromJson(json['time'] as DateTime),
      id: _$JsonConverterFromJson<ObjectId, ObjectId>(
          json['_id'], const ObjectIdConverter().fromJson),
    );

Map<String, dynamic> _$$_EntityCurrentAssetToJson(
        _$_EntityCurrentAsset instance) =>
    <String, dynamic>{
      'total_amount': instance.totalAmount,
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
