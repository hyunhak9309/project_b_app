// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_order_info_bid_account.freezed.dart';
part 'entity_order_info_bid_account.g.dart';


@freezed
class EntityOrderInfoBidAccount with _$EntityOrderInfoBidAccount {
  factory EntityOrderInfoBidAccount({
    @JsonKey(name: 'currency') required String currency,
    @JsonKey(name: 'balance') required String balance,
    @JsonKey(name: 'locked') required String locked,
    @JsonKey(name: 'avg_buy_price') required String avgBuyPrice,
    @JsonKey(name: 'avg_buy_price_modified') required bool avgBuyPriceModified,
    @JsonKey(name: 'unit_currency') required String unitCurrency,
  }) = _EntityOrderInfoBidAccount;

  factory EntityOrderInfoBidAccount.fromJson(Map<String, dynamic> json) => _$EntityOrderInfoBidAccountFromJson(json);
}
