import 'package:project_b/data/entity/upbit/entity_order_response.dart';
import 'package:project_b/domain/repository/center/record_repository.dart';
import '../../../main.dart';
import '../../data_source/mongo_db.dart';

class RecordRepositoryImpl implements RecordRepository {
  RecordRepositoryImpl({required this.db});

  final MyDB db;

  @override
  void insertOrderRecord(EntityOrderResponse orderResponse) {
    db.insertOrderRecord(orderResponse);
  }

  @override
  Future<List<EntityOrderResponse>> readOrderRecord(String marketCode) async {
    var process01 = await db.readOrderRecord(marketCode);
    return process01.map((e) => EntityOrderResponse.fromJson(e)).toList();
  }

  @override
  void replaceOrderRecord(String marketCode, String amount) async{
    var result = await db.replaceOrderRecord(marketCode, amount);
    if (!result.isSuccess ||
        !result.success ||
        result.isFailure ||
        result.hasWriteErrors) {
      logger.e(result.writeError);
    }
  }

}
