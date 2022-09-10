// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_b/data/entity/upbit/entity_order_info/entity_order_info_market_bid.dart';
import 'entity_order_info_market_ask.dart';

part 'entity_order_info_market.freezed.dart';
part 'entity_order_info_market.g.dart';


@freezed
class EntityOrderInfoMarket with _$EntityOrderInfoMarket {
  factory EntityOrderInfoMarket({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'order_types') required List<String> orderTypes,
    @JsonKey(name: 'order_sides') required List<String> orderSides,
    @JsonKey(name: 'bid') required EntityOrderInfoMarketBid bid,
    @JsonKey(name: 'ask') required EntityOrderInfoMarketAsk ask,
    @JsonKey(name: 'max_total') required String maxTotal,
    @JsonKey(name: 'state') required String state,
  }) = _EntityOrderInfoMarket;

  factory EntityOrderInfoMarket.fromJson(Map<String, dynamic> json) => _$EntityOrderInfoMarketFromJson(json);
}
