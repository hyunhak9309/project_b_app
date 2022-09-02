// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_withdraw_info_member_level.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntityWithdrawInfoMemberLevel _$$_EntityWithdrawInfoMemberLevelFromJson(
        Map<String, dynamic> json) =>
    _$_EntityWithdrawInfoMemberLevel(
      securityLevel: json['security_level'] as int,
      feeLevel: json['fee_level'] as int,
      emailVerified: json['email_verified'] as bool,
      identityAuthVerified: json['identity_auth_verified'] as bool,
      bankAccountVerified: json['bank_account_verified'] as bool,
      kakaoPayAuthVerified: json['kakao_pay_auth_verified'] as bool,
      locked: json['locked'] as bool,
      walletLocked: json['wallet_locked'] as bool,
    );

Map<String, dynamic> _$$_EntityWithdrawInfoMemberLevelToJson(
        _$_EntityWithdrawInfoMemberLevel instance) =>
    <String, dynamic>{
      'security_level': instance.securityLevel,
      'fee_level': instance.feeLevel,
      'email_verified': instance.emailVerified,
      'identity_auth_verified': instance.identityAuthVerified,
      'bank_account_verified': instance.bankAccountVerified,
      'kakao_pay_auth_verified': instance.kakaoPayAuthVerified,
      'locked': instance.locked,
      'wallet_locked': instance.walletLocked,
    };
