import 'package:igdb_games/api/igdb_client.dart';
import 'package:igdb_games/api/models/game.dart';
import 'package:igdb_games/data/data_source/igdb_data_source.dart';

class NetworkDataSource implements IgdbDataSource {
  final _client = IgdbClient();

  @override
  Future<List<Game>> getGames() => _client.getGames();
}
