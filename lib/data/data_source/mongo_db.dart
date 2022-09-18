import 'package:get/get.dart';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:project_b/data/entity/mongodb/entity_current_asset/entity_current_asset.dart';
import 'package:project_b/data/entity/mongodb/entity_market_info_for_save/entity_market_info_for_save.dart';
import 'package:project_b/data/entity/share/entity_order_response/entity_order_response.dart';

import '../entity/mongodb/entity_error/entity_error.dart';

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
        .findOne(where.lte('time', time).sortBy('time', descending: true));
  }

  Future<WriteResult> deleteMarketInfo(DateTime time) {
    return db.collection('market_record').deleteMany(where.lte('time', time));
  }

  Future<WriteResult> insertOrderRecord(EntityOrderResponse orderResponse) {
    return db.collection('order_record').insertOne(orderResponse.toJson());
  }

  Future<WriteResult> replaceOrderRecord(
      String marketCode, String amount, bool bidOrAsk) async {
    return db.collection('order_record').updateOne(
        where.eq('market', marketCode).eq('volume', amount).eq('side', bidOrAsk ? 'bid' : 'ask'),
        modify.set('state', 'done'));
  }

  Future<List<Map<String, dynamic>>> readCertainOrderRecord(String marketCode) async {
    return await db
        .collection('order_record')
        .find(where.eq('market', marketCode).sortBy('created_at', descending: true))
        .toList();
  }

  Future<List<Map<String, dynamic>>> readTotalOrderRecord() async {
    return await db
        .collection('order_record')
        .find(where.sortBy('created_at', descending: true).limit(1000))
        .toList();
  }

  Future<List<Map<String, dynamic>>> readWaitingOrderRecord() async {
   return await db
       .collection('order_record')
       .find(where.eq('state', 'wait').sortBy('created_at', descending: true)).toList();
  }

  Future<WriteResult> deleteOrderRecord(String uuid)async{
    return await db.collection('order_record').deleteOne(where.eq('uuid', uuid));
  }

  Future<WriteResult> insertError(EntityError error) {
    return db.collection('error_record').insertOne(error.toJson());
  }
}
