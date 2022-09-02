import 'package:get/get.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:project_b/data/entity/mongodb/entity_current_asset.dart';
import 'package:project_b/data/entity/mongodb/entity_market_info_for_save.dart';
import '../../main.dart';

class MyDB extends GetConnect {
  static Db db = Db('mongodb://hyunhak93:titan@localhost/admin');

  Future<WriteResult> insertAsset(EntityCurrentAsset asset) {
    return db.collection('asset_record').insertOne(asset.toJson());
  }

  Future<Map<String, dynamic>?> readAsset(DateTime time) async {
    return await db
        .collection('asset_record')
        .findOne(where.lte('time', time).sortBy('time', descending: true));
  }

  Future<WriteResult> insertMarketInfo(EntityMarketInfoForSave marketInfo) {
    return db.collection('market_record').insertOne(marketInfo.toJson());
  }

  Future<Map<String, dynamic>?> readMarketInfo(DateTime time) async {
    return await db
        .collection('market_record')
        .findOne(where.eq('time', time).sortBy('time', descending: true));
  }

  Future<WriteResult> deleteMarketInfo(DateTime time) {
    return db.collection('market_record').deleteMany(where.lte('time', time));
  }
}
