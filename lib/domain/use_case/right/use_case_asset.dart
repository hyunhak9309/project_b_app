import 'package:project_b/data/entity/mongodb/entity_current_asset.dart';
import '../../../main.dart';
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
        currentTime.day - 1, currentTime.hour, currentTime.minute);
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
          ? resultDay.totalAmount != 0.0
              ? ((currentTotalAmount - resultDay.totalAmount) /
                      resultDay.totalAmount) *
                  100
              : null
          : null,
      totalBeforeWeek: resultWeek != null
          ? resultWeek.totalAmount != 0.0
              ? ((currentTotalAmount - resultWeek.totalAmount) /
                      resultWeek.totalAmount) *
                  100
              : null
          : null,
      totalBeforeMonth: resultMonth != null
          ? resultMonth.totalAmount != 0.0
              ? ((currentTotalAmount - resultMonth.totalAmount) /
                      resultMonth.totalAmount) *
                  100
              : null
          : null,
      totalBeforeYear: resultYear != null
          ? resultYear.totalAmount != 0.0
              ? ((currentTotalAmount - resultYear.totalAmount) /
                      resultYear.totalAmount) *
                  100
              : null
          : null,
      totalBeforeMinute: resultMinute != null
          ? resultMinute.totalAmount != 0.0
              ? ((currentTotalAmount - resultMinute.totalAmount) /
                      resultMinute.totalAmount) *
                  100
              : null
          : null,
      totalBeforeHour: resultHour != null
          ? resultHour.totalAmount != 0.0
              ? ((currentTotalAmount - resultHour.totalAmount) /
                      resultHour.totalAmount) *
                  100
              : null
          : null,
    );
  }
}
