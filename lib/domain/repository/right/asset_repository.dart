import '../../../data/entity/mongodb/entity_current_asset.dart';

abstract class AssetRepository {
  void insertAsset({required EntityCurrentAsset asset});

  Future<EntityCurrentAsset?> readAsset({required DateTime currentTime});
}
