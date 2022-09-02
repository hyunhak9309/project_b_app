// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_withdraw_info_currency.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntityWithdrawInfoCurrency _$$_EntityWithdrawInfoCurrencyFromJson(
        Map<String, dynamic> json) =>
    _$_EntityWithdrawInfoCurrency(
      code: json['code'] as String,
      withdrawFee: json['withdraw_fee'] as String,
      isCoin: json['is_coin'] as bool,
      walletState: json['wallet_state'] as String,
      walletSupport: (json['wallet_support'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_EntityWithdrawInfoCurrencyToJson(
        _$_EntityWithdrawInfoCurrency instance) =>
    <String, dynamic>{
      'code': instance.code,
      'withdraw_fee': instance.withdrawFee,
      'is_coin': instance.isCoin,
      'wallet_state': instance.walletState,
      'wallet_support': instance.walletSupport,
    };
