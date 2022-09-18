// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/entity/upbit/entity_account/entity_account.dart';

part 'model_wallet.freezed.dart';

part 'model_wallet.g.dart';

@freezed
class ModelWallet with _$ModelWallet {
  factory ModelWallet({
    required List<EntityAccount> originalWalletInfo,
    required double totalAmount,
    required double amountAvailableToOrder,
    required double tiedAmount,
  }) = _ModelWallet;

  factory ModelWallet.fromJson(Map<String, dynamic> json) =>
      _$ModelWalletFromJson(json);
}
