import 'package:project_b/data/data_source/mongo_db.dart';
import 'package:project_b/data/entity/mongodb/entity_market_info_for_save.dart';
import 'package:project_b/data/entity/upbit/entity_current_info.dart';
import 'package:project_b/domain/repository/left/mongo_repository.dart';
import '../../../main.dart';

class MongoRepositoryImpl implements MongoRepository {
  MongoRepositoryImpl({required this.db});
  final MyDB db;

  @override
  void insertMarketInfoToDB(
      {required EntityMarketInfoForSave marketInfo}) async {
    var result = await db.insertMarketInfo(marketInfo);
    if (!result.isSuccess ||
        !result.success ||
        result.isFailure ||
        result.hasWriteErrors) {
      logger.e(result.writeError);
    }
  }

  @override
  void deleteMarketInfoInDB({required DateTime time}) async {
    var result = await db.deleteMarketInfo(time);
    if (!result.isSuccess) {
      logger.e(result.writeError);
    }
  }

  @override
  Future<List<EntityCurrentInfo>> getCoinInfoFromDB(
      {required DateTime time}) async {
    try {
      var process01 = await db.readMarketInfo(time);
      if (process01 != null) {
        var process02 = EntityMarketInfoForSave.fromJson(process01);
        return process02.marketInfo
            .map((e) => EntityCurrentInfo.fromJson(e))
            .toList();
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
