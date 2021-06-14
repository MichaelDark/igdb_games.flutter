import 'package:chopper/chopper.dart';
import 'package:chopper_built_value/chopper_built_value.dart';

import 'models/game.dart';
import 'models/serializers.dart';
import 'services/igdb_api.dart';

class IgdbClient {
  static const clientId = const String.fromEnvironment('CLIENT_ID');
  static const bearerToken = const String.fromEnvironment('BEARER_TOKEN');
  static const String _gameFields = 'fields aggregated_rating,'
      'aggregated_rating_count,alternative_names,artworks,bundles,category,'
      'checksum,collection,cover,created_at,dlcs,expanded_games,expansions,'
      'external_games,first_release_date,follows,forks,franchise,franchises,'
      'game_engines,game_modes,genres,hypes,involved_companies,keywords,'
      'multiplayer_modes,name,parent_game,platforms,player_perspectives,ports,'
      'rating,rating_count,release_dates,remakes,remasters,screenshots,'
      'similar_games,slug,standalone_expansions,status,storyline,summary,'
      'tags,themes,total_rating,total_rating_count,updated_at,url,'
      'version_parent,version_title,videos,websites;';

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
