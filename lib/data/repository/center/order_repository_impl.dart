import 'package:project_b/data/entity/upbit/entity_order_info/entity_order_info.dart';
import '../../../domain/repository/center/order_repository.dart';
import '../../../main.dart';
import '../../data_source/up_bit_server.dart';
import '../../entity/upbit/entity_order_response.dart';

class OrderRepositoryImpl implements OrderRepository {
  OrderRepositoryImpl({required this.server});

  final UpBitServer server;

  @override
  Future<EntityOrderInfo?> getCoinOrderInfo(String market) async {
    var process01 = await server.getOrderInfo(market);
    if (process01.statusCode == 200) {
      return EntityOrderInfo.fromJson(process01.body);
    } else {
      return null;
    }
  }

  @override
  Future<EntityOrderResponse?> order(
      String market, bool bid, double price, double volume) async {
    var process01 = await server.order(market, bid, price, volume);
    if (process01.statusCode == 201) {
      logger.w(process01.body);
      var result = EntityOrderResponse.fromJson(process01.body);
      return result;
    } else {
      return null;
    }
  }
}
