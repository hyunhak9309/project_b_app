// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:project_b/application/util/object_id_converter.dart';
import '../../../application/util/timestamp_converter.dart';

part 'entity_current_asset.freezed.dart';
part 'entity_current_asset.g.dart';


@freezed
class EntityCurrentAsset with _$EntityCurrentAsset {
  factory EntityCurrentAsset({
    @JsonKey(name: 'total_amount') required double totalAmount,
    @TimestampConverter() @JsonKey(name: 'time') required DateTime time,
    @ObjectIdConverter() @JsonKey(name: '_id') required ObjectId? id,
  }) = _EntityCurrentAsset;

  factory EntityCurrentAsset.fromJson(Map<String, dynamic> json) => _$EntityCurrentAssetFromJson(json);

}
