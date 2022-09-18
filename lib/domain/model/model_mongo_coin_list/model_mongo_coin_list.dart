// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../model_2nd_current_info/model_2nd_current_info.dart';

part 'model_mongo_coin_list.freezed.dart';

part 'model_mongo_coin_list.g.dart';

@freezed
class ModelMongoCoinList with _$ModelMongoCoinList {
  factory ModelMongoCoinList({
    required List<Model2ndCurrentInfo> market,
    required List<Model2ndCurrentInfo> tradePrice,
    required List<Model2ndCurrentInfo> signedChangePrice,
    required List<Model2ndCurrentInfo> signedChangeRate,
    required List<Model2ndCurrentInfo> accTradePrice,
    required List<Model2ndCurrentInfo> accTradeVolume,
  }) = _ModelMongoCoinList;

  factory ModelMongoCoinList.fromJson(Map<String, dynamic> json) =>
      _$ModelMongoCoinListFromJson(json);
}
