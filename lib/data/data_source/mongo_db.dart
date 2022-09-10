import 'package:get/get.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:project_b/data/entity/mongodb/entity_current_asset.dart';
import 'package:project_b/data/entity/mongodb/entity_market_info_for_save.dart';
import 'package:project_b/data/entity/upbit/entity_order_response.dart';

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

  Future<List<Map<String, dynamic>>> readOrderRecord(String marketCode) async {
    return await db
        .collection('order_record')
        .find(where.eq('market', marketCode).sortBy('time', descending: true))
        .toList();
  }

  Future<WriteResult> insertOrderRecord(EntityOrderResponse orderResponse) {
    return db.collection('order_record').insertOne(orderResponse.toJson());
  }

  Future<WriteResult> replaceOrderRecord(
      String marketCode, String amount) async {
    logger.w(marketCode);
    logger.w(amount);
    return db.collection('order_record').updateOne(
        where.eq('market', marketCode).eq('volume', amount),
        modify.set('state', 'done'));
  }
}
