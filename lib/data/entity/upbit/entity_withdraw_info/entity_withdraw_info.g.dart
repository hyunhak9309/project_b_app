// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_withdraw_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntityWithdrawInfo _$$_EntityWithdrawInfoFromJson(
        Map<String, dynamic> json) =>
    _$_EntityWithdrawInfo(
      memberLevel: EntityWithdrawInfoMemberLevel.fromJson(
          json['member_level'] as Map<String, dynamic>),
      currency: EntityWithdrawInfoCurrency.fromJson(
          json['currency'] as Map<String, dynamic>),
      account: EntityWithdrawInfoAccount.fromJson(
          json['account'] as Map<String, dynamic>),
      withdrawLimit: EntityWithdrawInfoWithdrawLimit.fromJson(
          json['withdraw_limit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EntityWithdrawInfoToJson(
        _$_EntityWithdrawInfo instance) =>
    <String, dynamic>{
      'member_level': instance.memberLevel,
      'currency': instance.currency,
      'account': instance.account,
      'withdraw_limit': instance.withdrawLimit,
    };
