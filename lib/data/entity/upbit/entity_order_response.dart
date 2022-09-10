// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_order_response.freezed.dart';
part 'entity_order_response.g.dart';


@freezed
class EntityOrderResponse with _$EntityOrderResponse {
  factory EntityOrderResponse({
    @JsonKey(name: 'uuid') required String uuid,
    @JsonKey(name: 'side') required String side,
    @JsonKey(name: 'ord_type') required String ordType,
    @JsonKey(name: 'price') required String price,
    @JsonKey(name: 'state') required String state,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'volume') required String volume,
    @JsonKey(name: 'market') required String market,
    @JsonKey(name: 'remaining_volume') required String remainingVolume,
    @JsonKey(name: 'reserved_fee') required String reservedFee,
    @JsonKey(name: 'remaining_fee') required String remainingFee,
    @JsonKey(name: 'paid_fee') required String paidFee,
    @JsonKey(name: 'locked') required String locked,
    @JsonKey(name: 'executed_volume') required String executedVolume,
    @JsonKey(name: 'trades_count') required int tradesCount,
  }) = _EntityOrderResponse;

  factory EntityOrderResponse.fromJson(Map<String, dynamic> json) => _$EntityOrderResponseFromJson(json);
}
