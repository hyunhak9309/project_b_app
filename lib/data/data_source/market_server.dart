import 'package:get/get.dart';
import '../../main.dart';
import '../entity/upbit/entity_market_code.dart';

class MarketServer extends GetConnect{

  Future<Response> getCoinList() => get(headers:{'Accept': 'application/json'}, 'https://api.upbit.com/v1/market/all?isDetails=true');

  Future<Response> getCoinInfo(List<EntityMarketCode> coinList) {
    var url = 'https://api.upbit.com/v1/ticker?';
    for (var element in coinList) {
      url += 'markets=${element.market}';
      if(element != coinList.last){
        url+='&';
      }
    }
  return get(headers:{'Accept': 'application/json'}, url);
  }

  Future<Response> getOrderBook(List<EntityMarketCode> marketCodeList){
    var url = 'https://api.upbit.com/v1/orderbook?';
    for (var element in marketCodeList) {
      url += 'markets=${element.market}';
      if(element != marketCodeList.last){
        url+='&';
      }
    }
    return get(headers:{'Accept': 'application/json'}, url);
  }

}