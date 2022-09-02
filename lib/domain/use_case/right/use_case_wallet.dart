import 'package:project_b/data/entity/upbit/entity_current_info.dart';
import '../../../data/entity/upbit/entity_my_wallet.dart';
import '../../model/model_wallet.dart';
import '../../repository/right/wallet_repository.dart';

class UseCaseWallet {
  final WalletRepository repository;

  UseCaseWallet({required this.repository});

  Future<ModelWallet> getMyWalletInfo() async {
    List<EntityMyWallet> myAssets = await repository.getMyWallet();

    List<String> assetList = [];
    for (var element in myAssets) {
      if (element.currency != 'KRW') {
        assetList.add('KRW-${element.currency}');
      }
    }

    List<EntityCurrentInfo> assetsInfo = [];
    if (assetList.isNotEmpty) {
      assetsInfo = await repository.getCoinInfo(assets: assetList);
    }

    double totalAmount = 0;
    double amountAvailableToOrder = 0;
    double tiedAmount = 0;

    for (var element in myAssets) {
      if (element.currency == "KRW") {
        totalAmount += double.parse(element.amountAvailableToOrder) +
            double.parse(element.tiedAmount);
        amountAvailableToOrder += double.parse(element.amountAvailableToOrder);
        tiedAmount += double.parse(element.tiedAmount);
      } else {
        for (var e in assetsInfo) {
          if (e.market == "KRW-${element.currency}") {
            totalAmount += (double.parse(element.amountAvailableToOrder) +
                    double.parse(element.tiedAmount)) *
                e.tradePrice;
            amountAvailableToOrder +=
                double.parse(element.amountAvailableToOrder) * e.tradePrice;
            tiedAmount += double.parse(element.tiedAmount) * e.tradePrice;
            break;
          }
        }
      }
    }

    return ModelWallet(
        originalWalletInfo: myAssets,
        totalAmount: totalAmount,
        amountAvailableToOrder: amountAvailableToOrder,
        tiedAmount: tiedAmount);
  }

  void depositMoney(int amount) {
    repository.depositMoney(amount);
  }

  void withdrawMoney(int amount) {
    repository.withdrawMoney(amount);
  }

  Future<double> getWithdrawInfo() async {
    var withdrawInfo = await repository.getWithdrawInfo();
    if (withdrawInfo != null) {
      if (!withdrawInfo.memberLevel.locked &&
          !withdrawInfo.memberLevel.walletLocked) {
        var amount = double.parse(withdrawInfo.account.balance) -
            double.parse(withdrawInfo.currency.withdrawFee); // 현재 출금가능한 금액
        var onetimeLimit =
            double.parse(withdrawInfo.withdrawLimit.onetime); // 한번에 출금 가능한 금액
        var dailyLimit = double.parse(
            withdrawInfo.withdrawLimit.remainingDailyKrw); // 일일 출금 가능한 한화 금액
        if(amount > 0){
          if (amount < onetimeLimit) {
            if (amount < dailyLimit) {
              return amount;
            } else {
              return dailyLimit;
            }
          } else {
            return onetimeLimit;
          }
        }else{
          return 0;
        }
      } else {
        return 0;
      }
    } else {
      return 0;
    }
  }
}
