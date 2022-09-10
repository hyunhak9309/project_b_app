// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_b/data/entity/upbit/entity_order_info/entity_order_info_ask_account.dart';
import 'package:project_b/data/entity/upbit/entity_order_info/entity_order_info_bid_account.dart';
import 'package:project_b/data/entity/upbit/entity_order_info/entity_order_info_market.dart';

part 'entity_order_info.freezed.dart';
part 'entity_order_info.g.dart';


@freezed
class EntityOrderInfo with _$EntityOrderInfo {
  factory EntityOrderInfo({
    @JsonKey(name: 'bid_fee') required String bidFee,
    @JsonKey(name: 'ask_fee') required String askFee,
    @JsonKey(name: 'market') required EntityOrderInfoMarket market,
    @JsonKey(name: 'bid_account') required EntityOrderInfoBidAccount bidAccount,
    @JsonKey(name: 'ask_account') required EntityOrderInfoAskAccount askAccount,
  }) = _EntityOrderInfo;

  factory EntityOrderInfo.fromJson(Map<String, dynamic> json) => _$EntityOrderInfoFromJson(json);
}
