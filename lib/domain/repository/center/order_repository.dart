
import 'package:project_b/data/entity/upbit/entity_order_response.dart';

import '../../../data/entity/upbit/entity_order_info/entity_order_info.dart';

abstract class OrderRepository{

  Future<EntityOrderInfo?> getCoinOrderInfo(String market);

  Future<EntityOrderResponse?> order(String market, bool bid, double price, double volume);

}