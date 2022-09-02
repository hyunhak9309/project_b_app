// ignore_for_file: invalid_annotation_target

import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_withdraw_info_currency.freezed.dart';
part 'entity_withdraw_info_currency.g.dart';


@freezed
class EntityWithdrawInfoCurrency with _$EntityWithdrawInfoCurrency {
  factory EntityWithdrawInfoCurrency({
    @JsonKey(name: 'code') required String code,
    @JsonKey(name: 'withdraw_fee') required String withdrawFee,
    @JsonKey(name: 'is_coin') required bool isCoin,
    @JsonKey(name: 'wallet_state') required String walletState,
    @JsonKey(name: 'wallet_support') required List<String> walletSupport,
  }) = _EntityWithdrawInfoCurrency;

  factory EntityWithdrawInfoCurrency.fromJson(Map<String, dynamic> json) => _$EntityWithdrawInfoCurrencyFromJson(json);
}
