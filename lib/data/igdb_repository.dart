import 'package:igdb_games/data/data_source/igdb_data_source.dart';
import 'package:igdb_games/models/game.dart';
import 'package:igdb_games/utils/convert_utils.dart';

import 'models/api_game.dart';

class IgdbRepository implements IgdbDataSource<Game> {
  final bool forceOffline;

  final IgdbDataSource<ApiGame> apiDataSource;
  final IgdbLocalDataSource<ApiGame> databaseDataSource;

  IgdbRepository({
    this.forceOffline = false,
    required this.apiDataSource,
    required this.databaseDataSource,
  });

  Future<List<Game>> getGames() async {
    late List<ApiGame> games;

    if (forceOffline) {
      print('[IgdbRepository#getGames] Start fetching offline...');
      final databaseGames = await databaseDataSource.getGames();
      print('[IgdbRepository#getGames] Fetched from offline!');
      games = databaseGames;
    } else {
      try {
        print('[IgdbRepository#getGames] Start fetching online...');
        final apiGames = await apiDataSource.getGames();

        print('[IgdbRepository#getGames] Fetched from online!');
        print('[IgdbRepository#getGames] Saving...');
        await databaseDataSource.saveGames(apiGames);

        print('[IgdbRepository#getGames] Saved!');
        games = apiGames;
      } catch (error) {
        print('[IgdbRepository#getGames] Fetch error: $error');
        print('[IgdbRepository#getGames] Falling back to fetching offline...');
        final databaseGames = await databaseDataSource.getGames();

        print('[IgdbRepository#getGames] Fetched from database!');
        games = databaseGames;
      }
    }

    print('[IgdbRepository#getGames] Sorting...');
    final postprocessedGames = games.map(convertApiGameToGame).toList()
      ..sort((a, b) => (a.id ?? 0).compareTo(b.id ?? 0));
    print('[IgdbRepository#getGames] Sorted!');
    return postprocessedGames;
  }
}
