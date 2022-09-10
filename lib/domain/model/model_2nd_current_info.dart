// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_2nd_current_info.freezed.dart';

part 'model_2nd_current_info.g.dart';

@freezed
class Model2ndCurrentInfo with _$Model2ndCurrentInfo {
  factory Model2ndCurrentInfo({
    required String market,
    required double tradePrice,
    required double signedChangePrice,
    required double signedChangeRate,
    required double accTradePrice,
    required double accTradeVolume,
    required String standard,
    required DateTime time,
  }) = _Model2ndCurrentInfo;

  factory Model2ndCurrentInfo.fromJson(Map<String, dynamic> json) =>
      _$Model2ndCurrentInfoFromJson(json);
}
