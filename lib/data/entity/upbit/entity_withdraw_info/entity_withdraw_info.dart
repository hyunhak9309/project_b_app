// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'entity_withdraw_info_account.dart';
import 'entity_withdraw_info_currency.dart';
import 'entity_withdraw_info_member_level.dart';
import 'entity_withdraw_info_withdraw_limit.dart';

part 'entity_withdraw_info.freezed.dart';
part 'entity_withdraw_info.g.dart';


@freezed
class EntityWithdrawInfo with _$EntityWithdrawInfo {
  factory EntityWithdrawInfo({
    @JsonKey(name: 'member_level') required EntityWithdrawInfoMemberLevel memberLevel,
    @JsonKey(name: 'currency') required EntityWithdrawInfoCurrency currency,
    @JsonKey(name: 'account') required EntityWithdrawInfoAccount account,
    @JsonKey(name: 'withdraw_limit') required EntityWithdrawInfoWithdrawLimit withdrawLimit,
  }) = _EntityWithdrawInfo;

  factory EntityWithdrawInfo.fromJson(Map<String, dynamic> json) => _$EntityWithdrawInfoFromJson(json);
}
