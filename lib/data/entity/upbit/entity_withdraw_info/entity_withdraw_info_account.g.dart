// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_withdraw_info_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntityWithdrawInfoAccount _$$_EntityWithdrawInfoAccountFromJson(
        Map<String, dynamic> json) =>
    _$_EntityWithdrawInfoAccount(
      currency: json['currency'] as String,
      balance: json['balance'] as String,
      locked: json['locked'] as String,
      avgBuyPrice: json['avg_buy_price'] as String,
      avgBuyPriceModified: json['avg_buy_price_modified'] as bool,
      unitCurrency: json['unit_currency'] as String,
    );

Map<String, dynamic> _$$_EntityWithdrawInfoAccountToJson(
        _$_EntityWithdrawInfoAccount instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'balance': instance.balance,
      'locked': instance.locked,
      'avg_buy_price': instance.avgBuyPrice,
      'avg_buy_price_modified': instance.avgBuyPriceModified,
      'unit_currency': instance.unitCurrency,
    };
