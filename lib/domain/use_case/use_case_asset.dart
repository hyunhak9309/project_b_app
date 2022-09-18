import 'package:project_b/data/entity/mongodb/entity_current_asset/entity_current_asset.dart';
import '../../application/util/result.dart';
import '../model/model_change_rate/model_change_rate.dart';
import '../repository/mongo_repository.dart';

class UseCaseAsset {
  final MongoRepository repository;

  UseCaseAsset({required this.repository});

  void insertAsset(
      {required double totalAmount, required DateTime currentTime}) {
    final time = DateTime(currentTime.year, currentTime.month, currentTime.day,
        currentTime.hour, currentTime.minute);
    final asset =
        EntityCurrentAsset(totalAmount: totalAmount, time: time, id: null);
    repository.insertAsset(asset: asset);
  }

  Future<Result<ModelChangeRate>> readAsset(
      {required double currentTotalAmount,
      required DateTime currentTime}) async {
    final standardMinute = DateTime(currentTime.year, currentTime.month,
        currentTime.day, currentTime.hour, currentTime.minute - 1);
    final standardHour = DateTime(currentTime.year, currentTime.month,
        currentTime.day, currentTime.hour - 1, currentTime.minute);
    final standardDay = DateTime(currentTime.year, currentTime.month,
        currentTime.day - 1, currentTime.hour, currentTime.minute);
    final standardWeek = DateTime(currentTime.year, currentTime.month,
        currentTime.day - 7, currentTime.hour, currentTime.minute);
    final standardMonth = DateTime(currentTime.year, currentTime.month - 1,
        currentTime.day, currentTime.hour, currentTime.minute);
    final standardYear = DateTime(currentTime.year - 1, currentTime.month,
        currentTime.day, currentTime.hour, currentTime.minute);

    var totalBeforeMinute = 0.0;
    var totalBeforeHour = 0.0;
    var totalBeforeDay = 0.0;
    var totalBeforeWeek = 0.0;
    var totalBeforeMonth = 0.0;
    var totalBeforeYear = 0.0;

    final resultMinute =
        await repository.readAsset(currentTime: standardMinute);
    resultMinute.when(success: (data) {
      totalBeforeMinute = data.totalAmount != 0.0
          ? ((currentTotalAmount - data.totalAmount) / data.totalAmount) * 100
          : 0;
    }, error:(e) => Result.error(e));

    final resultHour = await repository.readAsset(currentTime: standardHour);
    resultHour.when(success: (data) {
      totalBeforeHour = data.totalAmount != 0.0
          ? ((currentTotalAmount - data.totalAmount) / data.totalAmount) * 100
          : 0;
    }, error: (e) => Result.error(e));

    final resultDay = await repository.readAsset(currentTime: standardDay);
    resultDay.when(success: (data) {
      totalBeforeDay = data.totalAmount != 0.0
          ? ((currentTotalAmount - data.totalAmount) / data.totalAmount) * 100
          : 0;
    }, error: (e) => Result.error(e));

    final resultWeek = await repository.readAsset(currentTime: standardWeek);
    resultWeek.when(success: (data) {
      totalBeforeWeek = data.totalAmount != 0.0
          ? ((currentTotalAmount - data.totalAmount) / data.totalAmount) * 100
          : 0;
    }, error: (e) => Result.error(e));

    final resultMonth = await repository.readAsset(currentTime: standardMonth);
    resultMonth.when(success: (data) {
      totalBeforeMonth = data.totalAmount != 0.0
          ? ((currentTotalAmount - data.totalAmount) / data.totalAmount) * 100
          : 0;
    }, error: (e) => Result.error(e));

    final resultYear = await repository.readAsset(currentTime: standardYear);
    resultYear.when(success: (data) {
      totalBeforeYear = data.totalAmount != 0.0
          ? ((currentTotalAmount - data.totalAmount) / data.totalAmount) * 100
          : 0;
    }, error: (e) => Result.error(e));

    return Result.success(ModelChangeRate(
        totalBeforeMinute: totalBeforeMinute,
        totalBeforeHour: totalBeforeHour,
        totalBeforeDay: totalBeforeDay,
        totalBeforeWeek: totalBeforeWeek,
        totalBeforeMonth: totalBeforeMonth,
        totalBeforeYear: totalBeforeYear));
  }
}
