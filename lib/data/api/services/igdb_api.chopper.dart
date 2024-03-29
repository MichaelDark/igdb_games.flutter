// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'igdb_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$IgdbApi extends IgdbApi {
  _$IgdbApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = IgdbApi;

  @override
  Future<Response<List<ApiGame>>> getGames(
      {required String clientId,
      required String bearerToken,
      required String body}) {
    final $url = '/v4/games';
    final $headers = {
      'Client-ID': clientId,
      'Authorization': bearerToken,
      'Accept': 'application/json',
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<List<ApiGame>, ApiGame>($request,
        requestConverter: IgdbApi.rawRequestConverter);
  }
}
