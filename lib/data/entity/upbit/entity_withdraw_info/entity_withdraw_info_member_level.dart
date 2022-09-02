// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_withdraw_info_member_level.freezed.dart';
part 'entity_withdraw_info_member_level.g.dart';


@freezed
class EntityWithdrawInfoMemberLevel with _$EntityWithdrawInfoMemberLevel {
  factory EntityWithdrawInfoMemberLevel({
    @JsonKey(name: 'security_level') required int securityLevel,
    @JsonKey(name: 'fee_level') required int feeLevel,
    @JsonKey(name: 'email_verified') required bool emailVerified,
    @JsonKey(name: 'identity_auth_verified') required bool identityAuthVerified,
    @JsonKey(name: 'bank_account_verified') required bool bankAccountVerified,
    @JsonKey(name: 'kakao_pay_auth_verified') required bool kakaoPayAuthVerified,
    @JsonKey(name: 'locked') required bool locked,
    @JsonKey(name: 'wallet_locked') required bool walletLocked,

  }) = _EntityWithdrawInfoMemberLevel;

  factory EntityWithdrawInfoMemberLevel.fromJson(Map<String, dynamic> json) => _$EntityWithdrawInfoMemberLevelFromJson(json);
}
