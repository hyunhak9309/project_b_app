// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_order_info_market_bid.freezed.dart';
part 'entity_order_info_market_bid.g.dart';


@freezed
class EntityOrderInfoMarketBid with _$EntityOrderInfoMarketBid {
  factory EntityOrderInfoMarketBid({
    @JsonKey(name: 'currency') required String currency,
    @JsonKey(name: 'min_total') required String minTotal,
  }) = _EntityOrderInfoMarketBid;

  factory EntityOrderInfoMarketBid.fromJson(Map<String, dynamic> json) => _$EntityOrderInfoMarketBidFromJson(json);
}
