import 'package:get/get.dart';

class TransactionController extends GetxController{


  final Rx<double> _revenue = 0.0.obs;
  final Rx<double> _rateOfReturn = 0.0.obs;
  final Rx<bool> _transactionStatus = true.obs;

  Rx<double> get revenue => _revenue;
  Rx<double> get rateOfReturn => _rateOfReturn;
  Rx<bool> get transactionStatus => _transactionStatus;
}