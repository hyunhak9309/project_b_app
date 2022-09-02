import 'package:project_b/data/entity/upbit/entity_withdraw_info/entity_withdraw_info.dart';

import '../../../data/entity/upbit/entity_current_info.dart';
import '../../../data/entity/upbit/entity_my_wallet.dart';

abstract class WalletRepository {
  Future<List<EntityMyWallet>> getMyWallet();

  Future<List<EntityCurrentInfo>> getCoinInfo({required List<String> assets});

  void  depositMoney(int amount);

  Future<EntityWithdrawInfo?> getWithdrawInfo();

   void withdrawMoney(int amount);
}
