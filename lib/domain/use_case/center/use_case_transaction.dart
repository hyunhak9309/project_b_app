import 'package:project_b/data/entity/upbit/entity_order_response.dart';
import 'package:project_b/domain/repository/center/order_repository.dart';
import 'package:project_b/presentation/center/home_controller.dart';
import 'package:project_b/presentation/left/left_controller.dart';
import '../../../data/entity/upbit/entity_order_info/entity_order_info.dart';
import '../../../main.dart';
import '../../../presentation/right/right_controller.dart';

class UseCaseTransaction {
  final OrderRepository repository;

  UseCaseTransaction({required this.repository});

  Future<EntityOrderResponse?> startOrder(
      String marketCode, int position) async {
    var orderInfo = await repository.getCoinOrderInfo(marketCode); // 주문가능 정보 로딩
    if (orderInfo != null && orderInfo.market.state == "active") {
      var koreanName = LeftController.to.marketCode
          .where((p0) => p0.market == marketCode)
          .toList()[0]
          .koreanName;
      var currentPrice = LeftController.to.upBitData.value.market
          .where((element) => element.market == koreanName)
          .toList()[0]
          .tradePrice;
      if (double.parse(orderInfo.askAccount.balance) == 0) {
        // 코인을 보유하고 있지 않음, 매수 진행
        var ratio = (HomeController.to.transactionRatio[position] / 100);
        var canOrderBalance = RightController.to.wallet.value.totalAmount *
            ratio; // 해당 코인의 주문 가능 금액
        if (canOrderBalance < double.parse(orderInfo.bidAccount.balance)) {
          return bid(marketCode, orderInfo, canOrderBalance, currentPrice);
        } else {
          return null; //주문 금액의 설정이 맞지 않음
        }
      } else {
        return ask(marketCode, koreanName, orderInfo, currentPrice);
      }
    } else {
      return null; // 마켓이 활성화 상태가 아님
    }
  }

  Future<EntityOrderResponse?> bid(String marketCode, EntityOrderInfo orderInfo,
      double canOrderBalance, double currentPrice) async {
    var bidFee = double.parse(orderInfo.bidFee); // 매수 수수료
    var orderUnit = findOrderUnit(currentPrice); // 주문 가격 단위
    var orderPrice = currentPrice - orderUnit;
    while (orderPrice > (currentPrice * (1 - bidFee))) {
      orderPrice - orderUnit;
    }
    var orderVolume =
        double.parse((canOrderBalance / orderPrice).toStringAsFixed(8));
    return await repository.order(marketCode, true, orderPrice, orderVolume);
  }

  Future<EntityOrderResponse?> ask(String marketCode, String koreanName,
      EntityOrderInfo orderInfo, double currentPrice) async {
    logger.i(orderInfo);
    var bidFee = double.parse(orderInfo.bidFee); // 매수 수수료
    var orderUnit = findOrderUnit(currentPrice); // 주문 가격 단위
    var orderPrice = currentPrice + orderUnit;
    while (orderPrice < (currentPrice * (1 + bidFee))) {
      orderPrice - orderUnit;
    }
    var orderVolume = double.parse(orderInfo.askAccount.balance);
    return await repository.order(marketCode, false, orderPrice, orderVolume);
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
}
