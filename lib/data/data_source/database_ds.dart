import 'dart:convert';

import 'package:igdb_games/data/data_source/igdb_data_source.dart';
import 'package:igdb_games/data/models/api_game.dart';
import 'package:igdb_games/data/models/json_serializable_convertor.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class DatabaseDataSource implements IgdbLocalDataSource<ApiGame> {
  Future<Database> _openDb() async {
    final dir = await getApplicationDocumentsDirectory();
    await dir.create(recursive: true);
    final dbPath = join(dir.path, 'my_database.db');
    return await databaseFactoryIo.openDatabase(dbPath);
  }

  @override
  Future<List<ApiGame>> getGames() async {
    final db = await _openDb();
    final store = StoreRef.main();
    final gamesJson = await store.record('games').get(db);
    await db.close();
    return _jsonToGames(gamesJson == null ? '[]' : gamesJson);
  }

  List<ApiGame> _jsonToGames(String json) =>
      JsonSerializableConverter.fromJsonData<List<ApiGame>, ApiGame>(
        json,
        (j) => ApiGame.fromJson(j),
      );

  @override
  Future<void> saveGames(List<ApiGame> games) async {
    final db = await _openDb();
    final store = StoreRef.main();
    final gamesJson = _gamesToJson(games);
    await store.record('games').put(db, gamesJson);
    await db.close();
  }

  String _gamesToJson(List<ApiGame> games) =>
      json.encode(games.map((g) => g.toJson()).toList());
}
