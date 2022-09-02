import 'package:project_b/data/entity/upbit/entity_current_info.dart';
import 'package:project_b/data/entity/upbit/entity_withdraw_info/entity_withdraw_info.dart';
import '../../../domain/repository/right/wallet_repository.dart';
import '../../../main.dart';
import '../../data_source/user_server.dart';
import '../../entity/upbit/entity_my_wallet.dart';

class WalletRepositoryImpl implements WalletRepository {
  WalletRepositoryImpl({required this.server});

  final UserServer server;

  @override
  Future<List<EntityMyWallet>> getMyWallet() async {
    var process01 = await server.getMyAsset();
    if (process01.statusCode == 200) {
      List process02 = process01.body;
      return process02.map((e) => EntityMyWallet.fromJson(e)).toList();
    } else {
      return [];
    }
  }

  @override
  Future<List<EntityCurrentInfo>> getCoinInfo(
      {required List<String> assets}) async {
    var process01 = await server.getAssetInfo(assets);
    if (process01.statusCode == 200) {
      List process02 = process01.body; //=>list 반환
      return process02.map((e) => EntityCurrentInfo.fromJson(e)).toList();
    } else {
      return [];
    }
  }

  @override
  void depositMoney(int amount) async {
    var process01 = await server.depositMoney(amount);
    logger.wtf(process01.body);
  }

  @override
  Future<EntityWithdrawInfo?> getWithdrawInfo() async {
    var process01 = await server.getWithdrawInfo();
    if (process01.statusCode == 200) {
      return EntityWithdrawInfo.fromJson(process01.body);
    } else {
      return null;
    }
  }


  @override
  void withdrawMoney(int amount) async {
    var process01 = await server.withdrawMoney(amount);
    logger.wtf(process01.body);
  }


}
