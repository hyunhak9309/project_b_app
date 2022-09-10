// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_order_info_bid_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntityOrderInfoBidAccount _$$_EntityOrderInfoBidAccountFromJson(
        Map<String, dynamic> json) =>
    _$_EntityOrderInfoBidAccount(
      currency: json['currency'] as String,
      balance: json['balance'] as String,
      locked: json['locked'] as String,
      avgBuyPrice: json['avg_buy_price'] as String,
      avgBuyPriceModified: json['avg_buy_price_modified'] as bool,
      unitCurrency: json['unit_currency'] as String,
    );

Map<String, dynamic> _$$_EntityOrderInfoBidAccountToJson(
        _$_EntityOrderInfoBidAccount instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'balance': instance.balance,
      'locked': instance.locked,
      'avg_buy_price': instance.avgBuyPrice,
      'avg_buy_price_modified': instance.avgBuyPriceModified,
      'unit_currency': instance.unitCurrency,
    };
