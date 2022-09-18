// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/entity/share/entity_order_response/entity_order_response.dart';

part 'model_order_record.freezed.dart';
part 'model_order_record.g.dart';

@freezed
class ModelOrderRecord with _$ModelOrderRecord {
  factory ModelOrderRecord({
    required List<EntityOrderResponse> totalRecord,
    required List<EntityOrderResponse> waitingRecord,
  }) = _ModelOrderRecord;

  factory ModelOrderRecord.fromJson(Map<String, dynamic> json) =>
      _$ModelOrderRecordFromJson(json);
}
