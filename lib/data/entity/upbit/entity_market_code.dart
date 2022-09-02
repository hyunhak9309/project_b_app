// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_market_code.freezed.dart';
part 'entity_market_code.g.dart';


@freezed
class EntityMarketCode with _$EntityMarketCode {
  factory EntityMarketCode({
    @JsonKey(name: 'market') required String market,
    @JsonKey(name: 'korean_name') required String koreanName,
    @JsonKey(name: 'english_name') required String englishName,
    @JsonKey(name: 'market_warning') required String marketWarning,
  }) = _EntityMarketCode;

  factory EntityMarketCode.fromJson(Map<String, dynamic> json) => _$EntityMarketCodeFromJson(json);
}
