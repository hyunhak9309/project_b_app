// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_analyze_orderbook.freezed.dart';

part 'model_analyze_orderbook.g.dart';

@freezed
class ModelAnalyzeOrderbook with _$ModelAnalyzeOrderbook {
  factory ModelAnalyzeOrderbook({
    required String market,
    required double tradePrice,
    required double askBidRatio,
    required double oneToFiveAskBidRatio,
    required double oneToFiveOfTotalAskRatio,
    required double oneToFiveOfTotalBidRatio,
  }) = _ModelAnalyzeOrderbook;

  factory ModelAnalyzeOrderbook.fromJson(Map<String, dynamic> json) =>
      _$ModelAnalyzeOrderbookFromJson(json);
}
