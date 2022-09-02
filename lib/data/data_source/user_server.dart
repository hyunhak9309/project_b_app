import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:get/get.dart';
import 'package:project_b/application/resource/secret.dart';
import 'package:uuid/uuid.dart';

class UserServer extends GetConnect {
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
}
