// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_order_info_market_ask.freezed.dart';
part 'entity_order_info_market_ask.g.dart';


@freezed
class EntityOrderInfoMarketAsk with _$EntityOrderInfoMarketAsk {
  factory EntityOrderInfoMarketAsk({
    @JsonKey(name: 'currency') required String currency,
    @JsonKey(name: 'min_total') required String minTotal,
  }) = _EntityOrderInfoMarketAsk;

  factory EntityOrderInfoMarketAsk.fromJson(Map<String, dynamic> json) => _$EntityOrderInfoMarketAskFromJson(json);
}
