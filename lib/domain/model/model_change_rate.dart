// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_change_rate.freezed.dart';

part 'model_change_rate.g.dart';

@freezed
class ModelChangeRate with _$ModelChangeRate {
  factory ModelChangeRate({
    required double? totalBeforeMinute,
    required double? totalBeforeHour,
    required double? totalBeforeDay,
    required double? totalBeforeWeek,
    required double? totalBeforeMonth,
    required double? totalBeforeYear,
  }) = _ModelChangeRate;

  factory ModelChangeRate.fromJson(Map<String, dynamic> json) =>
      _$ModelChangeRateFromJson(json);
}
