// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'model_analyze_orderbook.freezed.dart';
part 'model_analyze_orderbook.g.dart';


@freezed
class ModelAnalyzeOrderbook with _$ModelAnalyzeOrderbook  {
  factory ModelAnalyzeOrderbook({
    @JsonKey(name: 'trade_price') required double tradePrice,
    @JsonKey(name: 'ask_bid_ratio') required double askBidRatio,
    @JsonKey(name: 'one_to_five_ask_bid_ratio') required double oneToFiveAskBidRatio,
    @JsonKey(name: 'one_to_five_of_total_ask_ratio') required double oneToFiveOfTotalAskRatio,
    @JsonKey(name: 'one_to_five_of_total_bid_ratio') required double oneToFiveOfTotalBidRatio,
  }) = _ModelAnalyzeOrderbook ;

  factory ModelAnalyzeOrderbook.fromJson(Map<String, dynamic> json) => _$ModelAnalyzeOrderbookFromJson(json);
}
