import 'package:shared_preferences/shared_preferences.dart';
import '../../application/util/result.dart';

class UseCaseSharedPreferences {
  Future<Result<int>> readTransactionRatio() async {
    final prefs = await SharedPreferences.getInstance();
    final int? value = prefs.getInt('transactionRatio');
    if (value != null) {
      return Result.success(value);
    } else {
      return const Result.success(5);
    }
  }

  void insertTransactionRatio(int transactionRatio) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('transactionRatio', transactionRatio);
  }
}
