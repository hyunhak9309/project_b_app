// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_2nd_current_info.freezed.dart';
part 'model_2nd_current_info.g.dart';


@freezed
class Model2ndCurrentInfo with _$Model2ndCurrentInfo {
  factory Model2ndCurrentInfo({
    @JsonKey(name: 'market') required String market,
    @JsonKey(name: 'trade_price') required double tradePrice,
    @JsonKey(name: 'signed_change_price') required double signedChangePrice,
    @JsonKey(name: 'signed_change_rate') required double signedChangeRate,
    @JsonKey(name: 'acc_trade_price') required double accTradePrice,
    @JsonKey(name: 'acc_trade_volume') required double accTradeVolume,
    @JsonKey(name: 'standard') required String standard,
    @JsonKey(name: 'time') required DateTime time,
  }) = _Model2ndCurrentInfo;

  factory Model2ndCurrentInfo.fromJson(Map<String, dynamic> json) => _$Model2ndCurrentInfoFromJson(json);
}
