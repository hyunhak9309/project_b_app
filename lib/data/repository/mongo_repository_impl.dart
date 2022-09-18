import 'package:project_b/data/data_source/mongo_db.dart';
import 'package:project_b/data/entity/mongodb/entity_error/entity_error.dart';
import 'package:project_b/data/entity/mongodb/entity_market_info_for_save/entity_market_info_for_save.dart';
import 'package:project_b/data/entity/upbit/entity_current_info/entity_current_info.dart';
import '../../application/util/result.dart';
import '../../domain/repository/mongo_repository.dart';
import '../entity/mongodb/entity_current_asset/entity_current_asset.dart';
import '../entity/share/entity_order_response/entity_order_response.dart';

class MongoRepositoryImpl implements MongoRepository {
  MongoRepositoryImpl({required this.db});

  final MyDB db;

  @override
  void insertAsset({required EntityCurrentAsset asset}) async {
    final result = await db.insertAsset(asset);
    if (!result.isSuccess ||
        !result.success ||
        result.isFailure ||
        result.hasWriteErrors) {
      if (result.writeError != null) {
        final error = EntityError(
            error: result.writeError.toString(),
            time: DateTime.now(),
            id: null);
        db.insertError(error);
      }
    }
  }

  @override
  Future<Result<EntityCurrentAsset>> readAsset(
      {required DateTime currentTime}) async {
    final result = await db.readAsset(currentTime);
    if (result != null) {
      return Result.success(EntityCurrentAsset.fromJson(result));
    } else {
      return const Result.error('MongoDB Error');
    }
  }

  @override
  void insertMarketInfoToDB(
      {required EntityMarketInfoForSave marketInfo}) async {
    final result = await db.insertMarketInfo(marketInfo);

    if (!result.isSuccess ||
        !result.success ||
        result.isFailure ||
        result.hasWriteErrors) {
      if (result.writeError != null) {
        final error = EntityError(
            error: result.writeError.toString(),
            time: DateTime.now(),
            id: null);
        db.insertError(error);
      }
    }
  }

  @override
  void deleteMarketInfoInDB({required DateTime time}) async {
    final result = await db.deleteMarketInfo(time);

    if (!result.isSuccess ||
        !result.success ||
        result.isFailure ||
        result.hasWriteErrors) {
      if (result.writeError != null) {
        final error = EntityError(
            error: result.writeError.toString(),
            time: DateTime.now(),
            id: null);
        db.insertError(error);
      }
    }
  }

  @override
  Future<Result<List<EntityCurrentInfo>>> getCoinInfoFromMongo(
      {required DateTime time}) async {
    final result = await db.readMarketInfo(time);
    if (result != null) {
      return Result.success(EntityMarketInfoForSave.fromJson(result)
          .marketInfo
          .map((e) => EntityCurrentInfo.fromJson(e))
          .toList());
    } else {
      return const Result.error('MongoDB Error');
    }
  }

  @override
  void insertOrderRecord(EntityOrderResponse orderResponse) {
    db.insertOrderRecord(orderResponse);
  }


  @override
  Future<Result<List<EntityOrderResponse>>> readTotalOrderRecord() async {
    final process01 = await db.readTotalOrderRecord();
    if (process01.isNotEmpty) {
      return Result.success(
          process01.map((e) => EntityOrderResponse.fromJson(e)).toList());
    } else {
      return const Result.error('MongoDB Error');
    }
  }

  @override
  Future<Result<List<EntityOrderResponse>>> readWaitingOrderRecord() async {
    final process01 = await db.readWaitingOrderRecord();
    if (process01.isNotEmpty) {
      return Result.success(
          process01.map((e) => EntityOrderResponse.fromJson(e)).toList());
    } else {
      return const Result.error('MongoDB Error');
    }
  }

  @override
  void replaceCertainOrderRecord(
      String marketCode, String amount, bool bidOrAsk) async {
    final result = await db.replaceOrderRecord(marketCode, amount, bidOrAsk);
    if (!result.isSuccess ||
        !result.success ||
        result.isFailure ||
        result.hasWriteErrors) {
      if (result.writeError != null) {
        final error = EntityError(
            error: result.writeError.toString(),
            time: DateTime.now(),
            id: null);
        db.insertError(error);
      }
    }
  }

  @override
  void deleteOrderRecord(String uuid) async {
    final result = await db.deleteOrderRecord(uuid);
    if (!result.isSuccess ||
        !result.success ||
        result.isFailure ||
        result.hasWriteErrors) {
      if (result.writeError != null) {
        final error = EntityError(
            error: result.writeError.toString(),
            time: DateTime.now(),
            id: null);
        db.insertError(error);
      }
    }
  }
}
