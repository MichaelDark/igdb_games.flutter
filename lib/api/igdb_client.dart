import 'package:chopper/chopper.dart';
import 'package:chopper_built_value/chopper_built_value.dart';

import 'models/game.dart';
import 'models/serializers.dart';
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
    converter: BuiltValueConverter(serializers),
    errorConverter: BuiltValueConverter(serializers),
  );

  IgdbApi get _igdbApi => chopper.getService<IgdbApi>();

  Future<List<Game>> getGames() async {
    print(clientId);
    print(bearerToken);
    final response = await _igdbApi.getGames(
      clientId: clientId,
      bearerToken: 'Bearer $bearerToken',
      body: _gameFields,
    );
    final success = response.isSuccessful;

    if (success) {
      return response.body!.asList();
    } else {
      throw response.error ?? 'Error fetching games!';
    }
  }
}
