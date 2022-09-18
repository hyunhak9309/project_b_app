import 'package:project_b/data/entity/share/entity_order_response/entity_order_response.dart';
import 'package:project_b/domain/model/model_order_record/model_order_record.dart';
import '../../application/util/result.dart';
import '../repository/mongo_repository.dart';

class UseCaseOrderRecord {
  final MongoRepository repository;

  UseCaseOrderRecord({required this.repository});

  void insertOrderRecord(EntityOrderResponse orderResponse) {
    repository.insertOrderRecord(orderResponse);
  }

  void replaceOrderState(String marketCode, String amount, bool bidOrAsk) {
    repository.replaceCertainOrderRecord(marketCode, amount, bidOrAsk);
  }

  Future<Result<ModelOrderRecord>> readOrderRecord() async {
    final totalRecord = <EntityOrderResponse>[];
    final waitingRecord = <EntityOrderResponse>[];

    var getWaitingOrderRecord = await repository.readWaitingOrderRecord();
    getWaitingOrderRecord.when(
        success: (data) {
          waitingRecord.addAll(data);
        },
        error: (e) => Result.error(e));

    var getTotalOrderRecord = await repository.readTotalOrderRecord();
    getTotalOrderRecord.when(
        success: (data) {
          totalRecord.addAll(data);
        },
        error: (e) => Result.error(e));

    return Result.success(ModelOrderRecord(
        totalRecord: totalRecord, waitingRecord: waitingRecord));
  }

  void deleteOrderRecord(String uuid) {
    repository.deleteOrderRecord(uuid);
  }
}
