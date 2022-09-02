// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_orderbook_unit.freezed.dart';
part 'entity_orderbook_unit.g.dart';


@freezed
class EntityOrderbookUnit with _$EntityOrderbookUnit {
  factory EntityOrderbookUnit({
    @JsonKey(name: 'ask_price') required double askPrice,
    @JsonKey(name: 'bid_price') required double bidPrice,
    @JsonKey(name: 'ask_size') required double askSize,
    @JsonKey(name: 'bid_size') required double bidSize,
  }) = _EntityOrderbookUnit;

  factory EntityOrderbookUnit.fromJson(Map<String, dynamic> json) => _$EntityOrderbookUnitFromJson(json);
}
