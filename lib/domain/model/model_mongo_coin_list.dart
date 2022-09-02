// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'model_2nd_current_info.dart';

part 'model_mongo_coin_list.freezed.dart';
part 'model_mongo_coin_list.g.dart';


@freezed
class ModelMongoCoinList with _$ModelMongoCoinList  {
  factory ModelMongoCoinList({
    @JsonKey(name: 'trade_price') required List<Model2ndCurrentInfo> tradePrice,
    @JsonKey(name: 'signed_change_price') required List<Model2ndCurrentInfo> signedChangePrice,
    @JsonKey(name: 'signed_change_rate') required List<Model2ndCurrentInfo> signedChangeRate,
    @JsonKey(name: 'acc_trade_price') required List<Model2ndCurrentInfo> accTradePrice,
    @JsonKey(name: 'acc_trade_volume') required List<Model2ndCurrentInfo> accTradeVolume,
  }) = _ModelMongoCoinList ;

  factory ModelMongoCoinList.fromJson(Map<String, dynamic> json) => _$ModelMongoCoinListFromJson(json);
}
