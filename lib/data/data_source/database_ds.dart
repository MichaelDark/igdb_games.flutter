import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:igdb_games/api/models/game.dart';
import 'package:igdb_games/api/models/serializers.dart';
import 'package:igdb_games/data/data_source/igdb_data_source.dart';
import 'package:igdb_games/data/database_storage/database_storage.dart';
import 'package:objectdb/objectdb.dart';

class DatabaseDataSource implements IgdbLocalDataSource {
  Future<ObjectDB> _getDB() async {
    return ObjectDB(await StorageProvider.instance.getStorage());
  }

  @override
  Future<List<Game>> getGames() async {
    final _db = await _getDB();
    final gamesMapList = await _db.find();
    return gamesMapList
        .map((map) {
          final gamesJson = json.encode(gamesMapList);
          return serializers.deserializeWith(Game.serializer, gamesJson);
        })
        .whereNotNull()
        .toList();
  }

  @override
  Future<void> saveGames(List<Game> games) async {
    final _db = await _getDB();
    for (final game in games) {
      await _db.remove({'id': game.id});
      final gameObject = serializers.serializeWith(Game.serializer, game);
      if (gameObject is String) {
        final gameJsonMap = json.decode(gameObject);
        await _db.insert(gameJsonMap);
      }
    }
  }
}
