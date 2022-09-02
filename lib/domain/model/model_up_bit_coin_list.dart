// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_b/data/entity/upbit/entity_current_info.dart';

import 'model_2nd_current_info.dart';

part 'model_up_bit_coin_list.freezed.dart';
part 'model_up_bit_coin_list.g.dart';


@freezed
class ModelUpBitCoinList with _$ModelUpBitCoinList  {
  factory ModelUpBitCoinList({
    @JsonKey(name: 'trade_price') required List<EntityCurrentInfo> tradePrice,
    @JsonKey(name: 'signed_change_price') required List<EntityCurrentInfo> signedChangePrice,
    @JsonKey(name: 'signed_change_rate') required List<EntityCurrentInfo> signedChangeRate,
    @JsonKey(name: 'high_price') required List<EntityCurrentInfo> highPrice,
    @JsonKey(name: 'low_price') required List<EntityCurrentInfo> lowPrice,
    @JsonKey(name: 'acc_trade_price_24h') required List<EntityCurrentInfo> accTradePrice24h,
    @JsonKey(name: 'acc_trade_volume_24h') required List<EntityCurrentInfo> accTradeVolume24h,
  }) = _ModelUpBitCoinList ;

  factory ModelUpBitCoinList.fromJson(Map<String, dynamic> json) => _$ModelUpBitCoinListFromJson(json);
}
