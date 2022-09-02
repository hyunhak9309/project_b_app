// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_withdraw_info_withdraw_limit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntityWithdrawInfoWithdrawLimit _$$_EntityWithdrawInfoWithdrawLimitFromJson(
        Map<String, dynamic> json) =>
    _$_EntityWithdrawInfoWithdrawLimit(
      currency: json['currency'] as String,
      minimum: json['minimum'] as String,
      onetime: json['onetime'] as String,
      daily: json['daily'] as String,
      remainingDaily: json['remaining_daily'] as String,
      remainingDailyKrw: json['remaining_daily_krw'] as String,
      fixed: json['fixed'] as int,
      canWithdraw: json['can_withdraw'] as bool,
    );

Map<String, dynamic> _$$_EntityWithdrawInfoWithdrawLimitToJson(
        _$_EntityWithdrawInfoWithdrawLimit instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'minimum': instance.minimum,
      'onetime': instance.onetime,
      'daily': instance.daily,
      'remaining_daily': instance.remainingDaily,
      'remaining_daily_krw': instance.remainingDailyKrw,
      'fixed': instance.fixed,
      'can_withdraw': instance.canWithdraw,
    };
