import 'package:igdb_games/data/data_source/igdb_data_source.dart';
import 'package:igdb_games/data/models/game.dart';

enum IgdbRepositorySource { online, offline }

class IgdbRepository {
  final IgdbDataSource apiDataSource;
  final IgdbLocalDataSource databaseDataSource;

  IgdbRepository({
    required this.apiDataSource,
    required this.databaseDataSource,
  });

  Future<List<Game>> getGames([
    IgdbRepositorySource source = IgdbRepositorySource.online,
  ]) async {
    late List<Game> games;
    try {
      if (source == IgdbRepositorySource.offline) {
        print('[IgdbRepository#getGames] Start fetching offline...');
        final databaseGames = await databaseDataSource.getGames();
        print('[IgdbRepository#getGames] Fetched!');
        games = databaseGames;
      } else {
        print('[IgdbRepository#getGames] Start fetching online...');
        final apiGames = await apiDataSource.getGames();
        print('[IgdbRepository#getGames] Fetched!');
        print('[IgdbRepository#getGames] Saving...');
        await databaseDataSource.saveGames(apiGames);
        print('[IgdbRepository#getGames] Saved!');
        games = apiGames;
      }
    } catch (error) {
      print('[IgdbRepository#getGames] Fetch error: $error');
      print('[IgdbRepository#getGames] Falling back to fetching offline...');
      final databaseGames = await databaseDataSource.getGames();
      games = databaseGames;
    }
    print('[IgdbRepository#getGames] Sorting and returning...');
    return games..sort((a, b) => (a.id ?? 0).compareTo(b.id ?? 0));
  }
}
