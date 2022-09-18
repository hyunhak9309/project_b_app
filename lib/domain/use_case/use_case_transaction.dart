import 'package:project_b/data/entity/share/entity_order_response/entity_order_response.dart';
import 'package:project_b/presentation/core_controller.dart';
import 'package:project_b/presentation/market/market_controller.dart';
import '../../../data/entity/upbit/entity_order_info/entity_order_info.dart';
import '../../application/util/result.dart';
import '../../data/entity/upbit/entity_account/entity_account.dart';
import '../../data/entity/upbit/entity_current_info/entity_current_info.dart';
import '../repository/up_bit_repository.dart';

class UseCaseTransaction {
  final UpBitRepository repository;

  UseCaseTransaction({required this.repository});

  Future<Result<EntityOrderResponse>> startOrder(String marketCode) async {
    var getOrderInfo =
        await repository.getCoinOrderInfo(marketCode); // 주문가능 정보 로딩
    return getOrderInfo.when(
        success: (orderInfo) async {
          if (orderInfo.market.state == "active") {
            var koreanName = MarketController.to.marketCode
                .where((p0) => p0.market == marketCode)
                .toList()[0]
                .koreanName;
            var currentPrice = MarketController.to.upBitData.value.market
                .where((element) => element.market == koreanName)
                .toList()[0]
                .tradePrice;
            if (double.parse(orderInfo.askAccount.balance) == 0) {
              Result<List<EntityAccount>> getMyWallet =
                  await repository.getMyWallet();
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
                      final getCertainCoinInfo = await repository
                          .getCertainCoinInfo(assets: assetList);
                      getCertainCoinInfo.when(
                          success: (coinInfo) {
                            assetsInfo.addAll(coinInfo);
                          },
                          error: (e) => Result.error(e));
                    }
                    double totalAmount = 0;
                    for (var element in data) {
                      if (element.currency == "KRW") {
                        totalAmount +=
                            double.parse(element.amountAvailableToOrder) +
                                double.parse(element.tiedAmount);
                      } else {
                        for (var e in assetsInfo) {
                          if (e.market == "KRW-${element.currency}") {
                            totalAmount +=
                                (double.parse(element.amountAvailableToOrder) +
                                        double.parse(element.tiedAmount)) *
                                    e.tradePrice;
                            break;
                          }
                        }
                      }
                    }
                    // 코인을 보유하고 있지 않음, 매수 진행
                    var ratio =
                        (CoreController.to.transactionRatio.value / 100);
                    var canOrderBalance =
                        totalAmount * ratio; // 해당 코인의 주문 가능 금액
                    if (canOrderBalance <=
                        double.parse(orderInfo.bidAccount.balance)) {
                      return bid(
                          marketCode, orderInfo, canOrderBalance, currentPrice);
                    } else {
                      return const Result.error('price is incorrect.');
                    }
                  },
                  error: (e) => Result.error(e));
            } else {
              return ask(marketCode, koreanName, orderInfo, currentPrice);
            }
          } else {
            return const Result.error('market is deactivate.');
          }
        },
        error: (e) => Result.error(e));
  }

  Future<Result<EntityOrderResponse>> bid(
      String marketCode,
      EntityOrderInfo orderInfo,
      double canOrderBalance,
      double currentPrice) async {
    var decimalPlaces = currentPrice.toString().split('.')[1].length;
    var bidFee = double.parse(orderInfo.bidFee); // 매수 수수료
    var orderUnit = findOrderUnit(currentPrice); // 주문 가격 단위
    var orderPrice = currentPrice;
    do {
      orderPrice -= orderUnit;
    } while (orderPrice > (currentPrice * (1 - bidFee + 0.001)));

    var orderVolume =
        double.parse((canOrderBalance / orderPrice).toStringAsFixed(8));
    return await repository.order(marketCode, true,
        double.parse(orderPrice.toStringAsFixed(decimalPlaces)), orderVolume);
  }

  Future<Result<EntityOrderResponse>> ask(String marketCode, String koreanName,
      EntityOrderInfo orderInfo, double currentPrice) async {
    var decimalPlaces = currentPrice.toString().split('.')[1].length;
    var askFee = double.parse(orderInfo.askFee); // 매수 수수료
    var orderUnit = findOrderUnit(currentPrice); // 주문 가격 단위
    var orderPrice = currentPrice;
    do {
      orderPrice += orderUnit;
    } while (orderPrice <= (currentPrice * (1 + askFee + 0.001)) ||
        orderPrice <= double.parse(orderInfo.askAccount.avgBuyPrice));
    var orderVolume = double.parse(orderInfo.askAccount.balance);
    return await repository.order(marketCode, false,
        double.parse(orderPrice.toStringAsFixed(decimalPlaces)), orderVolume);
  }

  double findOrderUnit(double currentPrice) {
    if (currentPrice >= 2000000) {
      return 1000;
    } else if (currentPrice >= 1000000 && currentPrice < 2000000) {
      return 500;
    } else if (currentPrice >= 500000 && currentPrice < 1000000) {
      return 100;
    } else if (currentPrice >= 100000 && currentPrice < 500000) {
      return 50;
    } else if (currentPrice >= 10000 && currentPrice < 100000) {
      return 10;
    } else if (currentPrice >= 1000 && currentPrice < 10000) {
      return 5;
    } else if (currentPrice >= 100 && currentPrice < 1000) {
      return 1;
    } else if (currentPrice >= 10 && currentPrice < 100) {
      return 0.1;
    } else if (currentPrice >= 1 && currentPrice < 10) {
      return 0.01;
    } else if (currentPrice >= 0.1 && currentPrice < 1) {
      return 0.001;
    } else {
      return 0.0001;
    }
  }

  Future<Result<EntityOrderResponse>> cancel(String uuid) async {
    return await repository.deleteOrder(uuid);
  }
}
