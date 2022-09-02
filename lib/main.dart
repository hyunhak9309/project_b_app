import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:oktoast/oktoast.dart';
import 'package:project_b/application/resource/theme.dart';
import 'package:project_b/data/repository/center/coin_repository_impl.dart';
import 'package:project_b/domain/use_case/center/use_case_market.dart';
import 'package:project_b/presentation/center/home.dart';
import 'package:project_b/presentation/center/home_controller.dart';
import 'package:project_b/presentation/left/left.dart';
import 'package:project_b/presentation/left/left_controller.dart';
import 'package:project_b/presentation/right/right.dart';
import 'package:project_b/presentation/right/right_controller.dart';
import 'application/resource/translation.dart';
import 'data/data_source/market_server.dart';
import 'data/data_source/mongo_db.dart';
import 'data/data_source/user_server.dart';
import 'data/repository/left/market_repository_impl.dart';
import 'data/repository/left/mongo_repository_impl.dart';
import 'data/repository/right/asset_repository_impl.dart';
import 'data/repository/right/wallet_repository_impl.dart';
import 'domain/use_case/left/use_case_mongo.dart';
import 'domain/use_case/left/use_case_up_bit.dart';
import 'domain/use_case/right/use_case_asset.dart';
import 'domain/use_case/right/use_case_wallet.dart';

void main() async {
  runApp(const ProjectB());
}

class ProjectB extends StatelessWidget {
  const ProjectB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyDB.db.open();
    return OKToast(
        child: GetMaterialApp(
      theme: ProjectBTheme.themeDark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Row(children: const [
        Expanded(flex: 1, child: Left()),
        Expanded(flex: 4, child: Home()),
        Expanded(flex: 1, child: Right()),
      ])),
      locale: const Locale('ko', 'KR'),
      translations: TextResource(),
      initialBinding: BindingsBuilder(
        () {
          Get.lazyPut<HomeController>(() => HomeController(
              getUseCaseMarket: UseCaseMarket(
                  repository: CoinRepositoryImpl(server: MarketServer()))));
          Get.lazyPut<RightController>(
            () => RightController(
                getUseCaseWallet: UseCaseWallet(
                    repository: WalletRepositoryImpl(server: UserServer())),
                getUseCaseAsset:
                    UseCaseAsset(repository: AssetRepositoryImpl(db: MyDB()))),
          );
          Get.lazyPut<LeftController>(
            () => LeftController(
                getUseCaseUpBit: UseCaseUpBit(
                    repository: MarketRepositoryImpl(server: MarketServer())),
                getUseCaseMongo:
                    UseCaseMongo(repository: MongoRepositoryImpl(db: MyDB()))),
          );
        },
      ),
    ));
  }
}

var logger = Logger(
    printer: PrettyPrinter(
        methodCount: 0,
        lineLength: 170,
        colors: true,
        printEmojis: false,
        printTime: true // Should each log print contain a timestamp
        ));
