// ignore_for_file: invalid_annotation_target

import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_withdraw_info_account.freezed.dart';
part 'entity_withdraw_info_account.g.dart';


@freezed
class EntityWithdrawInfoAccount with _$EntityWithdrawInfoAccount {
  factory EntityWithdrawInfoAccount({
    @JsonKey(name: 'currency') required String currency,
    @JsonKey(name: 'balance') required String balance,
    @JsonKey(name: 'locked') required String locked,
    @JsonKey(name: 'avg_buy_price') required String avgBuyPrice,
    @JsonKey(name: 'avg_buy_price_modified') required bool avgBuyPriceModified,
    @JsonKey(name: 'unit_currency') required String unitCurrency,
  }) = _EntityWithdrawInfoAccount;

  factory EntityWithdrawInfoAccount.fromJson(Map<String, dynamic> json) => _$EntityWithdrawInfoAccountFromJson(json);
}
