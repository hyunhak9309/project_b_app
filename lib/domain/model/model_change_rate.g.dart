// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_change_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelChangeRate _$$_ModelChangeRateFromJson(Map<String, dynamic> json) =>
    _$_ModelChangeRate(
      totalBeforeMinute: (json['total_before_minute'] as num?)?.toDouble(),
      totalBeforeHour: (json['total_before_hour'] as num?)?.toDouble(),
      totalBeforeDay: (json['total_before_day'] as num?)?.toDouble(),
      totalBeforeWeek: (json['total_before_week'] as num?)?.toDouble(),
      totalBeforeMonth: (json['total_before_month'] as num?)?.toDouble(),
      totalBeforeYear: (json['total_before_year'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ModelChangeRateToJson(_$_ModelChangeRate instance) =>
    <String, dynamic>{
      'total_before_minute': instance.totalBeforeMinute,
      'total_before_hour': instance.totalBeforeHour,
      'total_before_day': instance.totalBeforeDay,
      'total_before_week': instance.totalBeforeWeek,
      'total_before_month': instance.totalBeforeMonth,
      'total_before_year': instance.totalBeforeYear,
    };
