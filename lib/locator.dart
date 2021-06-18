import 'package:get_it/get_it.dart';

import 'data/data_source/database_ds.dart';
import 'data/data_source/igdb_data_source.dart';
import 'data/data_source/netword_ds.dart';
import 'data/igdb_repository.dart';
import 'data/models/api_game.dart';

final locator = GetIt.instance;

void setupDI() {
  locator.registerFactory<IgdbRepository>(
    () => IgdbRepository(
      apiDataSource: locator<IgdbDataSource<ApiGame>>(
        instanceName: 'api',
      ),
      databaseDataSource: locator<IgdbLocalDataSource<ApiGame>>(
        instanceName: 'local',
      ),
    ),
  );
  locator.registerFactory<IgdbDataSource<ApiGame>>(
    () => NetworkDataSource(),
    instanceName: 'api',
  );
  locator.registerFactory<IgdbLocalDataSource<ApiGame>>(
    () => DatabaseDataSource(),
    instanceName: 'local',
  );
}
