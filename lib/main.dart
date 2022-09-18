import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:oktoast/oktoast.dart';
import 'package:project_b/application/resource/theme.dart';
import 'package:project_b/presentation/core_controller.dart';
import 'package:project_b/presentation/my_asset/my_asset.dart';
import 'package:project_b/presentation/info_desk/info_desk.dart';
import 'package:project_b/presentation/info_desk/info_desk_controller.dart';
import 'package:project_b/presentation/market/market_controller.dart';
import 'package:project_b/presentation/market/market.dart';
import 'package:project_b/presentation/my_asset/my_asset_controller.dart';
import 'package:project_b/presentation/order_record/order_record.dart';
import 'package:project_b/presentation/order_record/order_record_controller.dart';
import 'package:project_b/presentation/trading/manual_trading_list.dart';
import 'package:project_b/presentation/trading/manual_trading_list_controller.dart';
import 'application/resource/translation.dart';
import 'data/data_source/up_bit_server.dart';
import 'data/data_source/mongo_db.dart';
import 'data/repository/up_bit_repository_impl.dart';
import 'data/repository/mongo_repository_impl.dart';
import 'domain/use_case/use_case_order_record.dart';
import 'domain/use_case/use_case_shared_preferences.dart';
import 'domain/use_case/use_case_market_record.dart';
import 'domain/use_case/use_case_market.dart';
import 'domain/use_case/use_case_asset.dart';
import 'domain/use_case/use_case_transaction.dart';
import 'domain/use_case/use_case_wallet.dart';

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
          body: Row(children: [
        Expanded(
          flex: 5,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: const [
                    Expanded(flex: 3, child: Market()),
                    Expanded(flex: 1, child: ManualTradingList()),
                  ],
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Row(
                    children: const [
                      Expanded(flex: 3, child: OrderRecord()),
                      Expanded(flex: 2, child: MyAsset()),
                    ],
                  )),
            ],
          ),
        ),
        const Expanded(flex: 1, child: InfoDesk()),
      ])),
      locale: const Locale('ko', 'KR'),
      translations: TextResource(),
      initialBinding: BindingsBuilder(
        () {
          final server = UpBitServer();
          final db = MyDB();
          Get.put(CoreController(getUseCaseSharedPreferences: UseCaseSharedPreferences()));

          Get.lazyPut<ManualTradingListController>(() =>
              ManualTradingListController());

          Get.lazyPut<MyAssetController>(()=>MyAssetController(
              getUseCaseRecord:
              UseCaseOrderRecord(repository: MongoRepositoryImpl(db: db)),
              getUseCaseWallet: UseCaseWallet(
                  repository: UpBitRepositoryImpl(server: server))));

          Get.lazyPut<OrderRecordController>(() =>OrderRecordController(
              getUseCaseRecord:
              UseCaseOrderRecord(repository: MongoRepositoryImpl(db: db)),
              getUseCaseTransaction: UseCaseTransaction(
                  repository: UpBitRepositoryImpl(server: server))));

              Get.lazyPut<InfoDeskController>(
            () => InfoDeskController(
                getUseCaseWallet: UseCaseWallet(
                    repository: UpBitRepositoryImpl(server: server)),
                getUseCaseAsset:
                    UseCaseAsset(repository: MongoRepositoryImpl(db:db ))),
          );
          Get.lazyPut<MarketController>(
            () => MarketController(
                getUseCaseUpBit: UseCaseMarket(
                    repository: UpBitRepositoryImpl(server: server)),
                getUseCaseMarketRecord:
                    UseCaseMarketRecord(repository: MongoRepositoryImpl(db: db))),
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
        printTime: false // Should each log print contain a timestamp
        ));
