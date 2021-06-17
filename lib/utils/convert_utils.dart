import 'package:collection/collection.dart';
import 'package:igdb_games/data/models/api_game.dart';
import 'package:igdb_games/models/game.dart';
import 'package:intl/intl.dart';
import 'package:recase/recase.dart';

Game convertApiGameToGame(ApiGame apiGame) {
  return Game(
    id: apiGame.id,
    category: apiGame.category,
    status: apiGame.status,
    createdAt: apiGame.createdAt,
    updatedAt: apiGame.updatedAt,
    firstReleaseDate: apiGame.firstReleaseDate,
    name: apiGame.name,
    slug: apiGame.slug,
    summary: apiGame.summary,
    url: apiGame.url,
    cover: _parseUrl(apiGame.cover?.url),
    gameModes: apiGame.gameModes?.map((n) => n.name).whereNotNull().toList(),
    genres: apiGame.genres?.map((n) => n.name).whereNotNull().toList(),
    keywords: apiGame.keywords?.map((n) => n.name).whereNotNull().toList(),
    platforms: apiGame.platforms?.map((n) => n.name).whereNotNull().toList(),
    themes: apiGame.themes?.map((n) => n.name).whereNotNull().toList(),
    screenshots: apiGame.screenshots
        ?.map((u) => _parseUrl(u.url))
        .whereNotNull()
        .toList(),
    websites:
        apiGame.websites?.map((u) => _parseUrl(u.url)).whereNotNull().toList(),
  );
}

String? _parseUrl(String? url) {
  if (url == null) {
    return null;
  } else if (url.isEmpty) {
    return null;
  } else if (url.startsWith('//')) {
    return 'https:$url';
  } else {
    return url;
  }
}

String? enumToString<T>(T? enumInstance) {
  if (enumInstance == null) return null;
  final index = enumInstance.toString().indexOf('.');
  if (index == -1) return null;
  final enumName = enumInstance.toString().substring(index);
  return ReCase(enumName).sentenceCase;
}

String? dateTimeToString(DateTime? date) {
  if (date == null) return null;
  return DateFormat.yMMMd().add_jm().format(date);
}
