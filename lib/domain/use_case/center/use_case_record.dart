import 'package:project_b/data/entity/upbit/entity_order_response.dart';

import '../../repository/center/record_repository.dart';

class UseCaseRecord {
  final RecordRepository repository;

  UseCaseRecord({required this.repository});

  void insertOrderRecord(EntityOrderResponse orderResponse) {
    repository.insertOrderRecord(orderResponse);
  }

  Future<List<EntityOrderResponse>> readOrderRecord(String marketCode) async {
    return await repository.readOrderRecord(marketCode);
  }

  void changeDoneToCoin(String marketCode, String amount){
    repository.replaceOrderRecord(marketCode, amount);
  }


}
