import 'package:project_b/data/entity/upbit/entity_order_response.dart';

abstract class RecordRepository {
  void insertOrderRecord(EntityOrderResponse orderResponse);

  Future<List<EntityOrderResponse>> readOrderRecord(String marketCode);

  void replaceOrderRecord(String marketCode, String amount);
}
