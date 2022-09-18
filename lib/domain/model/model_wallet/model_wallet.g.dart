// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelWallet _$$_ModelWalletFromJson(Map<String, dynamic> json) =>
    _$_ModelWallet(
      originalWalletInfo: (json['originalWalletInfo'] as List<dynamic>)
          .map((e) => EntityAccount.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalAmount: (json['totalAmount'] as num).toDouble(),
      amountAvailableToOrder:
          (json['amountAvailableToOrder'] as num).toDouble(),
      tiedAmount: (json['tiedAmount'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ModelWalletToJson(_$_ModelWallet instance) =>
    <String, dynamic>{
      'originalWalletInfo': instance.originalWalletInfo,
      'totalAmount': instance.totalAmount,
      'amountAvailableToOrder': instance.amountAvailableToOrder,
      'tiedAmount': instance.tiedAmount,
    };
