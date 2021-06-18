import "dart:async";

import 'package:chopper/chopper.dart';
import 'package:igdb_games/data/models/api_game.dart';

part "igdb_api.chopper.dart";

@ChopperApi(baseUrl: "/v4")
abstract class IgdbApi extends ChopperService {
  static IgdbApi create([ChopperClient? client]) => _$IgdbApi(client);
  static FutureOr<Request> rawRequestConverter(Request request) => request;

  @Post(
    path: "/games",
    headers: {'Accept': 'application/json'},
  )
  @FactoryConverter(request: rawRequestConverter)
  Future<Response<List<ApiGame>>> getGames({
    @Header("Client-ID") required String clientId,
    @Header("Authorization") required String bearerToken,
    @Body() required String body,
  });
}
