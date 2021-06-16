import 'package:igdb_games/data/data_source/igdb_data_source.dart';
import 'package:igdb_games/data/models/game.dart';
import 'package:igdb_games/objectbox.g.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

class ObjectBoxDatabaseDataSource implements IgdbLocalDataSource {
  Future<Store> getStore() async {
    final appDir = await getApplicationDocumentsDirectory();
    final dbPath = path.join(appDir.path, 'igdb_objectbox.db');
    return Store(getObjectBoxModel(), directory: dbPath);
  }

  @override
  Future<List<Game>> getGames() async {
    final store = await getStore();
    final box = store.box<Game>();
    return box.getAll();
  }

  @override
  Future<void> saveGames(List<Game> games) async {
    final store = await getStore();
    final box = store.box<Game>();
    box.putMany(games);
  }
}
