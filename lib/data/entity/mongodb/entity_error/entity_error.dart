// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:project_b/application/util/object_id_converter.dart';
import '../../../../application/util/timestamp_converter.dart';

part 'entity_error.freezed.dart';
part 'entity_error.g.dart';


@freezed
class EntityError with _$EntityError  {
  factory EntityError({
    @JsonKey(name: 'total_amount') required String error,
    @TimestampConverter() @JsonKey(name: 'time') required DateTime time,
    @ObjectIdConverter() @JsonKey(name: '_id') required ObjectId? id,
  }) = _EntityError ;

  factory EntityError.fromJson(Map<String, dynamic> json) => _$EntityErrorFromJson(json);

}
