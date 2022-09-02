import 'package:project_b/data/entity/mongodb/entity_current_asset.dart';
import 'package:project_b/domain/repository/right/asset_repository.dart';

import '../../../main.dart';
import '../../data_source/mongo_db.dart';

class AssetRepositoryImpl implements AssetRepository {
  AssetRepositoryImpl({required this.db});

  final MyDB db;

  @override
  void insertAsset({required EntityCurrentAsset asset}) async {
    var result = await db.insertAsset(asset);
    if (!result.isSuccess ||
        !result.success ||
        result.isFailure ||
        result.hasWriteErrors) {
      logger.e(result.writeError);
    }
  }

  @override
  Future<EntityCurrentAsset?> readAsset({required DateTime currentTime}) async {
    try {
      var process01 = await db.readAsset(currentTime);
      if (process01 != null) {
        return EntityCurrentAsset.fromJson(process01);
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
