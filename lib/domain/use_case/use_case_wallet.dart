import 'package:project_b/data/entity/upbit/entity_current_info/entity_current_info.dart';
import '../../application/util/result.dart';
import '../../data/entity/upbit/entity_account/entity_account.dart';
import '../model/model_wallet/model_wallet.dart';
import '../repository/up_bit_repository.dart';

class UseCaseWallet {
  final UpBitRepository repository;

  UseCaseWallet({required this.repository});

  Future<Result<ModelWallet>> getWalletInfo() async {
    Result<List<EntityAccount>> getMyWallet = await repository.getMyWallet();
    return getMyWallet.when(
        success: (data) async {
          List<String> assetList = [];
          data
              .where((element) => element.currency != 'KRW')
              .toList()
              .forEach((element) {
            assetList.add('KRW-${element.currency}');
          });

          final assetsInfo = <EntityCurrentInfo>[];
          if (assetList.isNotEmpty) {
            final getCertainCoinInfo =
                await repository.getCertainCoinInfo(assets: assetList);
            getCertainCoinInfo.when(
                success: (coinInfo) {
                  assetsInfo.addAll(coinInfo);
                },
                error: (e) => Result.error(e));
          }

          double totalAmount = 0;
          double amountAvailableToOrder = 0;
          double tiedAmount = 0;

          for (var element in data) {
            if (element.currency == "KRW") {
              totalAmount += double.parse(element.amountAvailableToOrder) +
                  double.parse(element.tiedAmount);
              amountAvailableToOrder +=
                  double.parse(element.amountAvailableToOrder);
              tiedAmount += double.parse(element.tiedAmount);
            } else {
              for (var e in assetsInfo) {
                if (e.market == "KRW-${element.currency}") {
                  totalAmount += (double.parse(element.amountAvailableToOrder) +
                          double.parse(element.tiedAmount)) *
                      e.tradePrice;
                  amountAvailableToOrder +=
                      double.parse(element.amountAvailableToOrder) *
                          e.tradePrice;
                  tiedAmount += double.parse(element.tiedAmount) * e.tradePrice;
                  break;
                }
              }
            }
          }
          return Result.success(ModelWallet(
              originalWalletInfo: data,
              totalAmount: totalAmount,
              amountAvailableToOrder: amountAvailableToOrder,
              tiedAmount: tiedAmount));
        },
        error: (e) => Result.error(e));
  }

  void depositMoney(int amount) {
    repository.depositMoney(amount);
  }

  void withdrawMoney(int amount) {
    repository.withdrawMoney(amount);
  }

  Future<Result<double>> getWithdrawInfo() async {
    var getWithdrawInfo = await repository.getWithdrawInfo();
    return getWithdrawInfo.when(
        success: (data) {
          if (!data.memberLevel.locked && !data.memberLevel.walletLocked) {
            var amount = double.parse(data.account.balance) -
                double.parse(data.currency.withdrawFee); // 현재 출금가능한 금액
            var onetimeLimit =
                double.parse(data.withdrawLimit.onetime); // 한번에 출금 가능한 금액
            var dailyLimit = double.parse(
                data.withdrawLimit.remainingDailyKrw); // 일일 출금 가능한 한화 금액
            if (amount > 0) {
              if (amount < onetimeLimit) {
                if (amount < dailyLimit) {
                  return Result.success(amount);
                } else {
                  return Result.success(dailyLimit);
                }
              } else {
                return Result.success(onetimeLimit);
              }
            } else {
              return const Result.success(0);
            }
          } else {
            return const Result.success(0);
          }
        },
        error: (e) => Result.error(e));
  }
}
