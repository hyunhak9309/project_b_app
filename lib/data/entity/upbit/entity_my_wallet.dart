// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_my_wallet.freezed.dart';
part 'entity_my_wallet.g.dart';


@freezed
class EntityMyWallet with _$EntityMyWallet {
  factory EntityMyWallet({
      @JsonKey(name: 'currency') required String currency,
      @JsonKey(name: 'balance') required String amountAvailableToOrder,
      @JsonKey(name: 'locked') required String tiedAmount,
      @JsonKey(name: 'avg_buy_price') required String averageBuyPrice,
      @JsonKey(name: 'avg_buy_price_modified') required bool averageBuyPriceModified,
      @JsonKey(name: 'unit_currency') required String unitCurrency
  }) = _EntityMyWallet;

  factory EntityMyWallet.fromJson(Map<String, dynamic> json) => _$EntityMyWalletFromJson(json);
}
