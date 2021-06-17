import 'package:igdb_games/data/api/igdb_client.dart';
import 'package:igdb_games/data/data_source/igdb_data_source.dart';
import 'package:igdb_games/data/models/api_game.dart';

class NetworkDataSource implements IgdbDataSource<ApiGame> {
  final _client = IgdbClient();

  @override
  Future<List<ApiGame>> getGames() async {
    final games = await _client.getGames();
    return games;
  }
}
