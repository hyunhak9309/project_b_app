// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_change_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelChangeRate _$$_ModelChangeRateFromJson(Map<String, dynamic> json) =>
    _$_ModelChangeRate(
      totalBeforeMinute: (json['totalBeforeMinute'] as num?)?.toDouble(),
      totalBeforeHour: (json['totalBeforeHour'] as num?)?.toDouble(),
      totalBeforeDay: (json['totalBeforeDay'] as num?)?.toDouble(),
      totalBeforeWeek: (json['totalBeforeWeek'] as num?)?.toDouble(),
      totalBeforeMonth: (json['totalBeforeMonth'] as num?)?.toDouble(),
      totalBeforeYear: (json['totalBeforeYear'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ModelChangeRateToJson(_$_ModelChangeRate instance) =>
    <String, dynamic>{
      'totalBeforeMinute': instance.totalBeforeMinute,
      'totalBeforeHour': instance.totalBeforeHour,
      'totalBeforeDay': instance.totalBeforeDay,
      'totalBeforeWeek': instance.totalBeforeWeek,
      'totalBeforeMonth': instance.totalBeforeMonth,
      'totalBeforeYear': instance.totalBeforeYear,
    };
