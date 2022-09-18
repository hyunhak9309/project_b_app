import '../../application/util/result.dart';
import '../../data/entity/mongodb/entity_current_asset/entity_current_asset.dart';
import '../../data/entity/mongodb/entity_market_info_for_save/entity_market_info_for_save.dart';
import '../../data/entity/share/entity_order_response/entity_order_response.dart';
import '../../data/entity/upbit/entity_current_info/entity_current_info.dart';

abstract class MongoRepository {

  void insertAsset({required EntityCurrentAsset asset});

  Future<Result<EntityCurrentAsset>> readAsset({required DateTime currentTime});

  void insertMarketInfoToDB({required EntityMarketInfoForSave marketInfo});

  void deleteMarketInfoInDB({required DateTime time});

  Future<Result<List<EntityCurrentInfo>>> getCoinInfoFromMongo(
      {required DateTime time});

  void insertOrderRecord(EntityOrderResponse orderResponse);

  Future<Result<List<EntityOrderResponse>>> readTotalOrderRecord();

  Future<Result<List<EntityOrderResponse>>> readWaitingOrderRecord();

  void replaceCertainOrderRecord(
      String marketCode, String amount, bool bidOrAsk);

  void deleteOrderRecord(String uuid);


}
