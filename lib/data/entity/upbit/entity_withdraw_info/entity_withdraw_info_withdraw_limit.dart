// ignore_for_file: invalid_annotation_target

import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_withdraw_info_withdraw_limit.freezed.dart';
part 'entity_withdraw_info_withdraw_limit.g.dart';


@freezed
class EntityWithdrawInfoWithdrawLimit with _$EntityWithdrawInfoWithdrawLimit{
  factory EntityWithdrawInfoWithdrawLimit({
    @JsonKey(name: 'currency') required String currency,
    @JsonKey(name: 'minimum') required String minimum,
    @JsonKey(name: 'onetime') required String onetime,
    @JsonKey(name: 'daily') required String daily,
    @JsonKey(name: 'remaining_daily') required String remainingDaily,
    @JsonKey(name: 'remaining_daily_krw') required String remainingDailyKrw,
    @JsonKey(name: 'fixed') required int fixed,
    @JsonKey(name: 'can_withdraw') required bool canWithdraw,
  }) = _EntityWithdrawInfoWithdrawLimit;

  factory EntityWithdrawInfoWithdrawLimit.fromJson(Map<String, dynamic> json) => _$EntityWithdrawInfoWithdrawLimitFromJson(json);
}
