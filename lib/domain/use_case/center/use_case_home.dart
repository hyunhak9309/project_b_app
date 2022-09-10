import 'package:shared_preferences/shared_preferences.dart';

import '../../../main.dart';

class UseCaseHome {
  Future<List<int>> readTransactionRatio() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? value = prefs.getStringList('transactionRatio');
    if (value != null) {
      var result = <int>[];
      for (var element in value) {
        result.add(int.parse(element));
      }
      return result;
    } else {
      return [10, 10, 10];
    }
  }

  void insertTransactionRatio(List<int> transactionRatio) async {
    final prefs = await SharedPreferences.getInstance();
    var value = <String>[];
    for (var element in transactionRatio) {
      value.add(element.toString());
    }
    await prefs.setStringList('transactionRatio', value);
  }


  Future<List<String>> readTransactionList() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? value = prefs.getStringList('transactionList');
    if (value != null) {
      return value;
    } else {
      return [];
    }
  }

  void insertTransactionList(List<String> transactionRatio) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('transactionList', transactionRatio);
  }

}
