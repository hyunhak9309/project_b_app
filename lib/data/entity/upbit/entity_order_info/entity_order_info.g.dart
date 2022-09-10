// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_order_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EntityOrderInfo _$$_EntityOrderInfoFromJson(Map<String, dynamic> json) =>
    _$_EntityOrderInfo(
      bidFee: json['bid_fee'] as String,
      askFee: json['ask_fee'] as String,
      market: EntityOrderInfoMarket.fromJson(
          json['market'] as Map<String, dynamic>),
      bidAccount: EntityOrderInfoBidAccount.fromJson(
          json['bid_account'] as Map<String, dynamic>),
      askAccount: EntityOrderInfoAskAccount.fromJson(
          json['ask_account'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EntityOrderInfoToJson(_$_EntityOrderInfo instance) =>
    <String, dynamic>{
      'bid_fee': instance.bidFee,
      'ask_fee': instance.askFee,
      'market': instance.market,
      'bid_account': instance.bidAccount,
      'ask_account': instance.askAccount,
    };
