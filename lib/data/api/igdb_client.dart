import 'package:chopper/chopper.dart';
import 'package:igdb_games/data/models/api_game.dart';
import 'package:igdb_games/data/models/json_serializable_convertor.dart';

import 'services/igdb_api.dart';

class IgdbClient {
  static const clientId = const String.fromEnvironment('CLIENT_ID');
  static const bearerToken = const String.fromEnvironment('BEARER_TOKEN');
  static const String _gameFields = 'fields id,category,status,created_at,'
      'name,slug,summary,'
      'updated_at,first_release_date,cover.id,cover.url,'
      'game_modes.id,game_modes.name,genres.id,genres.name,'
      'keywords.id,keywords.name,platforms.id,platforms.name,'
      'themes.id,themes.name,screenshots.id,screenshots.url,'
      'websites.id,websites.url;';

  final chopper = ChopperClient(
    baseUrl: "https://api.igdb.com",
    services: [IgdbApi.create()],
    converter: JsonSerializableConverter({
      ApiGame: (j) => ApiGame.fromJson(j),
    }),
  );

  IgdbApi get _igdbApi => chopper.getService<IgdbApi>();

  Future<List<ApiGame>> getGames() async {
    print(clientId);
    print(bearerToken);
    final response = await _igdbApi.getGames(
      clientId: clientId,
      bearerToken: 'Bearer $bearerToken',
      body: _gameFields,
    );
    final success = response.isSuccessful;

    if (success) {
      return response.body!;
    } else {
      throw response.error ?? 'Error fetching games!';
    }
  }
}
