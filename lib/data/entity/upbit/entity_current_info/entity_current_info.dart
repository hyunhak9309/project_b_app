// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_current_info.freezed.dart';
part 'entity_current_info.g.dart';


@freezed
class EntityCurrentInfo with _$EntityCurrentInfo {
  factory EntityCurrentInfo({
    @JsonKey(name: 'market') required String market,
    @JsonKey(name: 'trade_date') required String tradeDate,
    @JsonKey(name: 'trade_time') required String tradeTime,
    @JsonKey(name: 'trade_date_kst') required String tradeDateKst,
    @JsonKey(name: 'trade_time_kst') required String tradeTimeKst,
    @JsonKey(name: 'opening_price') required double openingPrice,
    @JsonKey(name: 'high_price') required double highPrice,
    @JsonKey(name: 'low_price') required double lowPrice,
    @JsonKey(name: 'trade_price') required double tradePrice,
    @JsonKey(name: 'prev_closing_price') required double prevClosingPrice,
    @JsonKey(name: 'change') required String change,
    @JsonKey(name: 'change_price') required double changePrice,
    @JsonKey(name: 'change_rate') required double changeRate,
    @JsonKey(name: 'signed_change_price') required double signedChangePrice,
    @JsonKey(name: 'signed_change_rate') required double signedChangeRate,
    @JsonKey(name: 'trade_volume') required double tradeVolume,
    @JsonKey(name: 'acc_trade_price') required double accTradePrice,
    @JsonKey(name: 'acc_trade_price_24h') required double accTradePrice24h,
    @JsonKey(name: 'acc_trade_volume') required double accTradeVolume,
    @JsonKey(name: 'acc_trade_volume_24h') required double accTradeVolume24h,
    @JsonKey(name: 'highest_52_week_price') required double highest52WeekPrice,
    @JsonKey(name: 'highest_52_week_date') required String highest52weekDate,
    @JsonKey(name: 'lowest_52_week_price') required double lowest52WeekPrice,
    @JsonKey(name: 'lowest_52_week_date') required String lowest52WeekDate,
    @JsonKey(name: 'timestamp') required int timestamp,
  }) = _EntityCurrentInfo;

  factory EntityCurrentInfo.fromJson(Map<String, dynamic> json) => _$EntityCurrentInfoFromJson(json);
}
