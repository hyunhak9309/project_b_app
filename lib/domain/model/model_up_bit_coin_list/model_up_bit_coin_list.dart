// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_b/data/entity/upbit/entity_current_info/entity_current_info.dart';

import '../model_2nd_current_info/model_2nd_current_info.dart';

part 'model_up_bit_coin_list.freezed.dart';

part 'model_up_bit_coin_list.g.dart';

@freezed
class ModelUpBitCoinList with _$ModelUpBitCoinList {
  factory ModelUpBitCoinList({
    required List<EntityCurrentInfo> market,
    required List<EntityCurrentInfo> tradePrice,
    required List<EntityCurrentInfo> signedChangePrice,
    required List<EntityCurrentInfo> signedChangeRate,
    required List<EntityCurrentInfo> highPrice,
    required List<EntityCurrentInfo> lowPrice,
    required List<EntityCurrentInfo> accTradePrice24h,
    required List<EntityCurrentInfo> accTradeVolume24h,
  }) = _ModelUpBitCoinList;

  factory ModelUpBitCoinList.fromJson(Map<String, dynamic> json) =>
      _$ModelUpBitCoinListFromJson(json);
}
