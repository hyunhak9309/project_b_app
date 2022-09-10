// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_order_info_ask_account.freezed.dart';
part 'entity_order_info_ask_account.g.dart';


@freezed
class EntityOrderInfoAskAccount with _$EntityOrderInfoAskAccount {
  factory EntityOrderInfoAskAccount({
    @JsonKey(name: 'currency') required String currency,
    @JsonKey(name: 'balance') required String balance,
    @JsonKey(name: 'locked') required String locked,
    @JsonKey(name: 'avg_buy_price') required String avgBuyPrice,
    @JsonKey(name: 'avg_buy_price_modified') required bool avgBuyPriceModified,
    @JsonKey(name: 'unit_currency') required String unitCurrency,
  }) = _EntityOrderInfoAskAccount;

  factory EntityOrderInfoAskAccount.fromJson(Map<String, dynamic> json) => _$EntityOrderInfoAskAccountFromJson(json);
}
