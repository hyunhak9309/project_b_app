// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_b/data/entity/upbit/entity_orderbook/entity_orderbook_unit.dart';

part 'entity_orderbook.freezed.dart';
part 'entity_orderbook.g.dart';


@freezed
class EntityOrderbook with _$EntityOrderbook {
  factory EntityOrderbook({
    @JsonKey(name: 'market') required String market,
    @JsonKey(name: 'timestamp') required int timestamp,
    @JsonKey(name: 'total_ask_size') required double totalAskSize,
    @JsonKey(name: 'total_bid_size') required double totalBidSize,
    @JsonKey(name: 'orderbook_units') required List<EntityOrderbookUnit> orderbookUnits,
  }) = _EntityOrderbook;

  factory EntityOrderbook.fromJson(Map<String, dynamic> json) => _$EntityOrderbookFromJson(json);
}
