// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:project_b/application/util/object_id_converter.dart';
import '../../../../application/util/timestamp_converter.dart';

part 'entity_market_info_for_save.freezed.dart';
part 'entity_market_info_for_save.g.dart';


@freezed
class EntityMarketInfoForSave with _$EntityMarketInfoForSave {
  factory EntityMarketInfoForSave({
    @JsonKey(name: 'market_info') required List marketInfo,
    @TimestampConverter() @JsonKey(name: 'time') required DateTime time,
    @ObjectIdConverter() @JsonKey(name: '_id') required ObjectId? id,
  }) = _EntityMarketInfoForSave;

  factory EntityMarketInfoForSave.fromJson(Map<String, dynamic> json) => _$EntityMarketInfoForSaveFromJson(json);

}
