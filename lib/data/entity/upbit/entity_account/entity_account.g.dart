// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntityAccount _$$_EntityAccountFromJson(Map<String, dynamic> json) =>
    _$_EntityAccount(
      currency: json['currency'] as String,
      amountAvailableToOrder: json['balance'] as String,
      tiedAmount: json['locked'] as String,
      averageBuyPrice: json['avg_buy_price'] as String,
      averageBuyPriceModified: json['avg_buy_price_modified'] as bool,
      unitCurrency: json['unit_currency'] as String,
    );

Map<String, dynamic> _$$_EntityAccountToJson(_$_EntityAccount instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'balance': instance.amountAvailableToOrder,
      'locked': instance.tiedAmount,
      'avg_buy_price': instance.averageBuyPrice,
      'avg_buy_price_modified': instance.averageBuyPriceModified,
      'unit_currency': instance.unitCurrency,
    };
