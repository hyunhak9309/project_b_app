// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_change_rate.freezed.dart';
part 'model_change_rate.g.dart';



@freezed
class ModelChangeRate with _$ModelChangeRate {
  factory ModelChangeRate({
    @JsonKey(name: 'total_before_minute') required double? totalBeforeMinute,
    @JsonKey(name: 'total_before_hour') required double? totalBeforeHour,
    @JsonKey(name: 'total_before_day') required double? totalBeforeDay,
    @JsonKey(name: 'total_before_week') required double? totalBeforeWeek,
    @JsonKey(name: 'total_before_month') required double? totalBeforeMonth,
    @JsonKey(name: 'total_before_year') required double? totalBeforeYear,
  }) = _ModelChangeRate;

  factory ModelChangeRate.fromJson(Map<String, dynamic> json) => _$ModelChangeRateFromJson(json);
}
