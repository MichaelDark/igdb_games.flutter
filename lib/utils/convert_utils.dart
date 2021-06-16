import 'dart:math';

import 'package:igdb_games/api/models/game.dart' as api_models;
import 'package:igdb_games/api/models/game_category_enum.dart';
import 'package:igdb_games/api/models/game_status_enum.dart';
import 'package:igdb_games/data/models/game.dart' as db_models;
import 'package:igdb_games/data/models/game_category.dart';
import 'package:igdb_games/data/models/game_status.dart';
import 'package:objectbox/objectbox.dart';

DateTime? parseEpochTimestamp(int? timestamp) {
  return timestamp == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
}

db_models.Game convertApiGameToDbGame(api_models.Game game) {
  return db_models.Game(
    id: game.id,
    categoryIndex: convertCategoryEnumToCategory(game.category)?.index,
    statusIndex: convertStatusEnumToStatus(game.status)?.index,
    createdAt: game.createdAt,
    updatedAt: game.updatedAt,
    firstReleaseDate: game.firstReleaseDate,
    name: game.name,
    slug: game.slug,
    summary: game.summary,
    url: game.url,
    coverUrl: game.cover?.url,
    gameModes: ToMany()
      ..addAll(game.gameModes?.map(convertApiNameToDbName).toList() ?? []),
    genres: ToMany()
      ..addAll(game.genres?.map(convertApiNameToDbName).toList() ?? []),
    keywords: ToMany()
      ..addAll(game.keywords?.map(convertApiNameToDbName).toList() ?? []),
    platforms: ToMany()
      ..addAll(game.platforms?.map(convertApiNameToDbName).toList() ?? []),
    themes: ToMany()
      ..addAll(game.themes?.map(convertApiNameToDbName).toList() ?? []),
    screenshots: ToMany()
      ..addAll(game.screenshots?.map(convertApiUrlToDbUrl).toList() ?? []),
    websites: ToMany()
      ..addAll(game.websites?.map(convertApiUrlToDbUrl).toList() ?? []),
  );
}

db_models.NameModel convertApiNameToDbName(api_models.NameModel value) {
  return db_models.NameModel(id: value.id, name: value.name);
}

db_models.UrlModel convertApiUrlToDbUrl(api_models.UrlModel value) {
  return db_models.UrlModel(id: Random().nextInt(0xFFFFFF), url: value.url);
}

GameCategory? convertCategoryEnumToCategory(GameCategoryEnum? value) {
  switch (value?.name) {
    case 'mainGame':
      return GameCategory.mainGame;
    case 'dlcAddon':
      return GameCategory.dlcAddon;
    case 'expansion':
      return GameCategory.expansion;
    case 'bundle':
      return GameCategory.bundle;
    case 'standaloneExpansion':
      return GameCategory.standaloneExpansion;
    case 'mod':
      return GameCategory.mod;
    case 'episode':
      return GameCategory.episode;
    case 'season':
      return GameCategory.season;
    case 'remake':
      return GameCategory.remake;
    case 'remaster':
      return GameCategory.remaster;
    case 'expandedGame':
      return GameCategory.expandedGame;
    case 'port':
      return GameCategory.port;
    case 'fork':
      return GameCategory.fork;
    default:
      return null;
  }
}

GameStatus? convertStatusEnumToStatus(GameStatusEnum? value) {
  switch (value) {
    case GameStatusEnum.released:
      return GameStatus.released;
    case GameStatusEnum.alpha:
      return GameStatus.alpha;
    case GameStatusEnum.beta:
      return GameStatus.beta;
    case GameStatusEnum.earlyAccess:
      return GameStatus.earlyAccess;
    case GameStatusEnum.offline:
      return GameStatus.offline;
    case GameStatusEnum.cancelled:
      return GameStatus.cancelled;
    case GameStatusEnum.rumored:
      return GameStatus.rumored;
    default:
      return null;
  }
}
