// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:project_b/domain/model/model_analyze_orderbook.dart';

part 'model_up_bit_order_book_list.freezed.dart';

part 'model_up_bit_order_book_list.g.dart';

@freezed
class ModelUpBitOrderBookList with _$ModelUpBitOrderBookList {
  factory ModelUpBitOrderBookList({
    required List<ModelAnalyzeOrderbook> market,
    required List<ModelAnalyzeOrderbook> tradePrice,
    required List<ModelAnalyzeOrderbook> askBidRatio,
    required List<ModelAnalyzeOrderbook> oneToFiveAskBidRatio,
    required List<ModelAnalyzeOrderbook> oneToFiveOfTotalAskRatio,
    required List<ModelAnalyzeOrderbook> oneToFiveOfTotalBidRatio,
  }) = _ModelUpBitOrderBookList;

  factory ModelUpBitOrderBookList.fromJson(Map<String, dynamic> json) =>
      _$ModelUpBitOrderBookListFromJson(json);
}
