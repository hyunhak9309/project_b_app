import '../../../data/entity/mongodb/entity_market_info_for_save.dart';
import '../../../data/entity/upbit/entity_current_info.dart';

abstract class MongoRepository {

  void insertMarketInfoToDB({required EntityMarketInfoForSave marketInfo});

  void deleteMarketInfoInDB({required DateTime time});

  Future<List<EntityCurrentInfo>> getCoinInfoFromDB({required DateTime time});

}
