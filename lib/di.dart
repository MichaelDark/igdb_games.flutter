import 'package:get_it/get_it.dart';
import 'package:igdb_games/data/data_source/igdb_data_source.dart';

import 'data/data_source/database_ds.dart';
import 'data/data_source/netword_ds.dart';
import 'data/igdb_repository.dart';

final locator = GetIt.instance;

void setupDI() {
  locator.registerFactory<IgdbDataSource>(
    () => IgdbRepository(
      apiDataSource: locator<IgdbDataSource>(instanceName: 'api'),
      databaseDataSource: locator<IgdbLocalDataSource>(instanceName: 'local'),
    ),
    instanceName: 'repository',
  );
  locator.registerFactory<IgdbDataSource>(
    () => NetworkDataSource(),
    instanceName: 'api',
  );
  locator.registerFactory<IgdbLocalDataSource>(
    () => DatabaseDataSource(),
    instanceName: 'local',
  );
}
