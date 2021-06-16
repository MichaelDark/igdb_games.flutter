import 'package:igdb_games/api/igdb_client.dart';
import 'package:igdb_games/data/data_source/igdb_data_source.dart';
import 'package:igdb_games/data/models/game.dart';
import 'package:igdb_games/utils/convert_utils.dart';

class NetworkDataSource implements IgdbDataSource {
  final _client = IgdbClient();

  @override
  Future<List<Game>> getGames() async {
    final games = await _client.getGames();
    return games.map(convertApiGameToDbGame).toList();
  }
}
