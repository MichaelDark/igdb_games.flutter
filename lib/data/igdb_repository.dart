import 'package:igdb_games/api/models/game.dart';
import 'package:igdb_games/data/data_source/igdb_data_source.dart';

class IgdbRepository implements IgdbDataSource {
  final IgdbDataSource apiDataSource;
  final IgdbLocalDataSource databaseDataSource;

  IgdbRepository({
    required this.apiDataSource,
    required this.databaseDataSource,
  });

  @override
  Future<List<Game>> getGames() async {
    try {
      final apiGames = await apiDataSource.getGames();
      await databaseDataSource.saveGames(apiGames);
      return apiGames;
    } catch (error) {
      final databaseGames = await databaseDataSource.getGames();
      return databaseGames;
    }
  }
}
