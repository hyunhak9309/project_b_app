// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_order_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelOrderRecord _$$_ModelOrderRecordFromJson(Map<String, dynamic> json) =>
    _$_ModelOrderRecord(
      totalRecord: (json['totalRecord'] as List<dynamic>)
          .map((e) => EntityOrderResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      waitingRecord: (json['waitingRecord'] as List<dynamic>)
          .map((e) => EntityOrderResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ModelOrderRecordToJson(_$_ModelOrderRecord instance) =>
    <String, dynamic>{
      'totalRecord': instance.totalRecord,
      'waitingRecord': instance.waitingRecord,
    };
