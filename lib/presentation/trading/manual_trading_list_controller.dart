import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../data/entity/upbit/entity_market_code/entity_market_code.dart';

class ManualTradingListController extends GetxController{
  ManualTradingListController();
  static ManualTradingListController get to => Get.find();
  final RxList<EntityMarketCode> _transactionList = <EntityMarketCode>[].obs;
  final ScrollController scrollController = ScrollController();
  RxList<EntityMarketCode> get transactionList => _transactionList;
}