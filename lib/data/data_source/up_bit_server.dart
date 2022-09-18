import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import '../../application/resource/secret.dart';
import '../../main.dart';
import '../entity/upbit/entity_market_code/entity_market_code.dart';

class UpBitServer extends GetConnect {
  Future<Response> getAccountInfo() {
    String token = JWT({'access_key': accessKey, 'nonce': const Uuid().v4()})
        .sign(SecretKey(secretKey));

    return get(headers: {
      "Accept": "application/json",
      'Authorization': 'Bearer $token'
    }, 'https://api.upbit.com/v1/accounts');
  }

  Future<Response> depositMoney(int amount) {
    var uri = Uri(
        queryParameters: {'amount': amount.toString()}
            .map((key, value) => MapEntry(key, value.toString()))).query;
    String token = JWT(makePayload(uri)).sign(SecretKey(secretKey));

    return post(
      'https://api.upbit.com/v1/deposits/krw',
      json.encode({'amount': amount}),
      headers: {
        "Accept": "application/json",
        'Authorization': 'Bearer $token',
        "Content-Type": "application/json",
      },
    );
  }

  Future<Response> getWithdrawInfo() {
    var uri = Uri(
        queryParameters: {'currency': 'KRW'}
            .map((key, value) => MapEntry(key, value.toString()))).query;
    String token = JWT(makePayload(uri)).sign(SecretKey(secretKey));

    return get(headers: {
      "Accept": "application/json",
      'Authorization': 'Bearer $token'
    }, 'https://api.upbit.com/v1/withdraws/chance?currency=KRW');
  }

  Future<Response> withdrawMoney(int amount) {
    var uri = Uri(
        queryParameters: {'amount': amount.toString()}
            .map((key, value) => MapEntry(key, value.toString()))).query;
    String token = JWT(makePayload(uri)).sign(SecretKey(secretKey));

    return post(
      'https://api.upbit.com/v1/withdraws/krw',
      json.encode({'amount': amount}),
      headers: {
        "Accept": "application/json",
        'Authorization': 'Bearer $token',
        "Content-Type": "application/json",
      },
    );
  }

  Future<Response> getMarketCoinList() => get(
      headers: {'Accept': 'application/json'},
      'https://api.upbit.com/v1/market/all?isDetails=true');

  Future<Response> getCoinInfo(
      {List<EntityMarketCode>? coinList, List<String>? assets}) {
    var url = 'https://api.upbit.com/v1/ticker?';
    if (coinList != null) {
      for (var element in coinList) {
        url += 'markets=${element.market}';
        if (element != coinList.last) {
          url += '&';
        }
      }
    } else if (assets != null) {
      for (var element in assets) {
        url += 'markets=$element';
        if (element != assets.last) {
          url += '&';
        }
      }
    }
    return get(headers: {'Accept': 'application/json'}, url);
  }

  Future<Response> getOrderBook(List<EntityMarketCode> marketCodeList) {
    var url = 'https://api.upbit.com/v1/orderbook?';
    for (var element in marketCodeList) {
      url += 'markets=${element.market}';
      if (element != marketCodeList.last) {
        url += '&';
      }
    }
    return get(headers: {'Accept': 'application/json'}, url);
  }

  Future<Response> getOrderInfo(String market) {
    var uri = Uri(
        queryParameters: {'market': market}
            .map((key, value) => MapEntry(key, value.toString()))).query;
    String token = JWT(makePayload(uri)).sign(SecretKey(secretKey));

    return get(headers: {
      "Accept": "application/json",
      'Authorization': 'Bearer $token'
    }, 'https://api.upbit.com/v1/orders/chance?$uri');
  }

  Future<Response> order(String market, bool bid, double price, double volume) {
    var uri = Uri(
        queryParameters: {
      'market': market,
      'side': bid ? 'bid' : 'ask',
      'volume': volume.toString(),
      'price': price.toString(),
      'ord_type': 'limit'
    }.map((key, value) => MapEntry(key, value.toString()))).query;
    String token = JWT(makePayload(uri)).sign(SecretKey(secretKey));

    return post(
      'https://api.upbit.com/v1/orders',
      json.encode({
        'market': market,
        'side': bid ? 'bid' : 'ask',
        'volume': volume.toString(),
        'price': price.toString(),
        'ord_type': 'limit'
      }),
      headers: {
        "Accept": "application/json",
        'Authorization': 'Bearer $token',
        "Content-Type": "application/json",
      },
    );
  }

  Future<Response> deleteOrder(String uuid) {
    var uri = Uri(
        queryParameters: {'uuid': uuid}
            .map((key, value) => MapEntry(key, value.toString()))).query;
    String token = JWT(makePayload(uri)).sign(SecretKey(secretKey));

    return delete(headers: {
      "Accept": "application/json",
      'Authorization': 'Bearer $token'
    }, 'https://api.upbit.com/v1/order?$uri');
  }

  Map<String, dynamic> makePayload(String uri) {
    return {
      'access_key': accessKey,
      'nonce': const Uuid().v4(),
      'query_hash': sha512.convert(utf8.encode(uri)).toString(),
      "query_hash_alg": 'SHA512'
    };
  }
}
