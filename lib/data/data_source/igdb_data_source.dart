import 'package:igdb_games/api/models/game.dart';

abstract class IgdbDataSource {
  Future<List<Game>> getGames();
}

abstract class IgdbLocalDataSource extends IgdbDataSource {
  Future<void> saveGames(List<Game> games);
}