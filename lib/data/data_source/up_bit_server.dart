import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:get/get.dart';
import 'package:uuid/uuid.dart';
import '../../application/resource/secret.dart';
import '../../main.dart';
import '../entity/upbit/entity_market_code.dart';

class UpBitServer extends GetConnect {
  Future<Response> getMyAsset() {
    var payloadT = {'access_key': accessKey, 'nonce': const Uuid().v4()};
    String token = JWT(payloadT).sign(SecretKey(secretKey));
    var authorizationToken = 'Bearer $token';
    return get(headers: {
      "Accept": "application/json",
      'Authorization': authorizationToken
    }, 'https://api.upbit.com/v1/accounts');
  }

  Future<Response> getAssetInfo(List<String> assets) {
    var url = 'https://api.upbit.com/v1/ticker?';
    for (var element in assets) {
      url += 'markets=$element';
      if (element != assets.last) {
        url += '&';
      }
    }
    return get(headers: {'Accept': 'application/json'}, url);
  }

  Future<Response> depositMoney(int amount) {
    var process01 = Uri(
        queryParameters: {'amount': amount.toString()}
            .map((key, value) => MapEntry(key, value.toString()))).query;
    var process02 = utf8.encode(process01);
    var process03 = sha512.convert(process02);
    var payloadT = {
      'access_key': accessKey,
      'nonce': const Uuid().v4(),
      'query_hash': process03.toString(),
      "query_hash_alg": 'SHA512'
    };
    String token = JWT(payloadT).sign(SecretKey(secretKey));
    var authorizationToken = 'Bearer $token';

    return post(
      'https://api.upbit.com/v1/deposits/krw',
      json.encode({'amount': amount}),
      headers: {
        "Accept": "application/json",
        'Authorization': authorizationToken,
        "Content-Type": "application/json",
      },
    );
  }

  Future<Response> getWithdrawInfo() {
    var process01 = Uri(
        queryParameters: {'currency': 'KRW'}
            .map((key, value) => MapEntry(key, value.toString()))).query;
    var process02 = utf8.encode(process01);
    var process03 = sha512.convert(process02);
    var payloadT = {
      'access_key': accessKey,
      'nonce': const Uuid().v4(),
      'query_hash': process03.toString(),
      "query_hash_alg": 'SHA512'
    };

    String token = JWT(payloadT).sign(SecretKey(secretKey));
    var authorizationToken = 'Bearer $token';
    return get(headers: {
      "Accept": "application/json",
      'Authorization': authorizationToken
    }, 'https://api.upbit.com/v1/withdraws/chance?currency=KRW');
  }

  Future<Response> withdrawMoney(int amount) {
    var process01 = Uri(
        queryParameters: {'amount': amount.toString()}
            .map((key, value) => MapEntry(key, value.toString()))).query;
    var process02 = utf8.encode(process01);
    var process03 = sha512.convert(process02);
    var payloadT = {
      'access_key': accessKey,
      'nonce': const Uuid().v4(),
      'query_hash': process03.toString(),
      "query_hash_alg": 'SHA512'
    };
    String token = JWT(payloadT).sign(SecretKey(secretKey));
    var authorizationToken = 'Bearer $token';

    return post(
      'https://api.upbit.com/v1/withdraws/krw',
      json.encode({'amount': amount}),
      headers: {
        "Accept": "application/json",
        'Authorization': authorizationToken,
        "Content-Type": "application/json",
      },
    );
  }

  Future<Response> getCoinList() => get(
      headers: {'Accept': 'application/json'},
      'https://api.upbit.com/v1/market/all?isDetails=true');

  Future<Response> getCoinInfo(List<EntityMarketCode> coinList) {
    var url = 'https://api.upbit.com/v1/ticker?';
    for (var element in coinList) {
      url += 'markets=${element.market}';
      if (element != coinList.last) {
        url += '&';
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
    var process01 = Uri(
        queryParameters: {'market': market}
            .map((key, value) => MapEntry(key, value.toString()))).query;
    var process02 = utf8.encode(process01);
    var process03 = sha512.convert(process02);
    var payloadT = {
      'access_key': accessKey,
      'nonce': const Uuid().v4(),
      'query_hash': process03.toString(),
      "query_hash_alg": 'SHA512'
    };

    String token = JWT(payloadT).sign(SecretKey(secretKey));
    var authorizationToken = 'Bearer $token';

    return get(headers: {
      "Accept": "application/json",
      'Authorization': authorizationToken
    }, 'https://api.upbit.com/v1/orders/chance?$process01');
  }

  Future<Response> order(String market, bool bid, double price, double volume) {
    var process01 = Uri(
        queryParameters: {
      'market': market,
      'side': bid ? 'bid' : 'ask',
      'volume': volume.toString(),
      'price': price.toString(),
      'ord_type': 'limit'
    }.map((key, value) => MapEntry(key, value.toString()))).query;
    var process02 = utf8.encode(process01);
    var process03 = sha512.convert(process02);
    var payloadT = {
      'access_key': accessKey,
      'nonce': const Uuid().v4(),
      'query_hash': process03.toString(),
      "query_hash_alg": 'SHA512'
    };

    String token = JWT(payloadT).sign(SecretKey(secretKey));
    var authorizationToken = 'Bearer $token';

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
        'Authorization': authorizationToken,
        "Content-Type": "application/json",
      },
    );
  }
}
