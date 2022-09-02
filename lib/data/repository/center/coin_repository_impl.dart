import 'package:project_b/data/entity/upbit/entity_orderbook/entity_orderbook.dart';

import '../../../domain/repository/center/coin_repository.dart';
import '../../data_source/market_server.dart';

class CoinRepositoryImpl implements CoinRepository {
  CoinRepositoryImpl({required this.server});

  final MarketServer server;




}
