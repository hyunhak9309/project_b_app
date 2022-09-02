import 'package:project_b/data/entity/mongodb/entity_current_asset.dart';
import '../../model/model_change_rate.dart';
import '../../repository/right/asset_repository.dart';

class UseCaseAsset {
  final AssetRepository repository;

  UseCaseAsset({required this.repository});

  void insertAsset(
      {required double totalAmount, required DateTime currentTime}) {
    var time = DateTime(currentTime.year, currentTime.month, currentTime.day,
        currentTime.hour, currentTime.minute);
    var asset =
        EntityCurrentAsset(totalAmount: totalAmount, time: time, id: null);
    repository.insertAsset(asset: asset);
  }

  Future<ModelChangeRate> setAsset(
      {required double currentTotalAmount,
      required DateTime currentTime}) async {
    var standardMinute = DateTime(currentTime.year, currentTime.month,
        currentTime.day, currentTime.hour, currentTime.minute - 1);
    var standardHour = DateTime(currentTime.year, currentTime.month,
        currentTime.day, currentTime.hour - 1, currentTime.minute);
    var standardDay = DateTime(currentTime.year, currentTime.month,
        currentTime.day-1, currentTime.hour, currentTime.minute);
    var standardWeek = DateTime(currentTime.year, currentTime.month,
        currentTime.day - 7, currentTime.hour, currentTime.minute);
    var standardMonth = DateTime(currentTime.year, currentTime.month - 1,
        currentTime.day, currentTime.hour, currentTime.minute);
    var standardYear = DateTime(currentTime.year - 1, currentTime.month,
        currentTime.day, currentTime.hour, currentTime.minute);

    var resultMinute = await repository.readAsset(currentTime: standardMinute);
    var resultHour = await repository.readAsset(currentTime: standardHour);
    var resultDay = await repository.readAsset(currentTime: standardDay);
    var resultWeek = await repository.readAsset(currentTime: standardWeek);
    var resultMonth = await repository.readAsset(currentTime: standardMonth);
    var resultYear = await repository.readAsset(currentTime: standardYear);

    return ModelChangeRate(
      totalBeforeDay: resultDay != null
          ? ((currentTotalAmount - resultDay.totalAmount) / resultDay.totalAmount) *
              100
          : null,
      totalBeforeWeek: resultWeek != null
          ? ((currentTotalAmount - resultWeek.totalAmount) / resultWeek.totalAmount) *
              100
          : null,
      totalBeforeMonth: resultMonth != null
          ? ((currentTotalAmount - resultMonth.totalAmount) / resultMonth.totalAmount) *
              100
          : null,
      totalBeforeYear: resultYear != null
          ? ((currentTotalAmount - resultYear.totalAmount) / resultYear.totalAmount) *
              100
          : null,
      totalBeforeMinute: resultMinute != null
          ? ((currentTotalAmount - resultMinute.totalAmount) / resultMinute.totalAmount) *
              100
          : null,
      totalBeforeHour: resultHour != null
          ? ((currentTotalAmount - resultHour.totalAmount) / resultHour.totalAmount) *
              100
          : null,
    );
  }
}
