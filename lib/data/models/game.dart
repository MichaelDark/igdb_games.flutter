import 'package:collection/collection.dart';
import 'package:objectbox/objectbox.dart';

import 'game_category.dart';
import 'game_status.dart';

@Entity()
class Game {
  GameStatus? get status {
    return GameStatus.values.firstWhereOrNull(
      (g) => g.index == statusIndex,
    );
  }

  GameCategory? get category {
    return GameCategory.values.firstWhereOrNull(
      (g) => g.index == categoryIndex,
    );
  }

  @Id(assignable: true)
  int? id;
  final int? categoryIndex;
  final int? statusIndex;
  final int? createdAt;
  final int? updatedAt;
  final int? firstReleaseDate;
  final String? name;
  final String? slug;
  final String? summary;
  final String? url;
  final String? coverUrl;
  final ToMany<NameModel> gameModes;
  final ToMany<NameModel> genres;
  final ToMany<NameModel> keywords;
  final ToMany<NameModel> platforms;
  final ToMany<NameModel> themes;
  final ToMany<UrlModel> screenshots;
  final ToMany<UrlModel> websites;

  Game({
    this.id,
    this.categoryIndex,
    this.statusIndex,
    this.createdAt,
    this.updatedAt,
    this.firstReleaseDate,
    this.name,
    this.slug,
    this.summary,
    this.url,
    this.coverUrl,
    ToMany<NameModel>? gameModes,
    ToMany<NameModel>? genres,
    ToMany<NameModel>? keywords,
    ToMany<NameModel>? platforms,
    ToMany<NameModel>? themes,
    ToMany<UrlModel>? screenshots,
    ToMany<UrlModel>? websites,
  })  : gameModes = gameModes ?? ToMany(),
        genres = genres ?? ToMany(),
        keywords = keywords ?? ToMany(),
        platforms = platforms ?? ToMany(),
        themes = themes ?? ToMany(),
        screenshots = screenshots ?? ToMany(),
        websites = websites ?? ToMany();
}

@Entity()
class NameModel {
  @Id()
  int internalId = 0;
  int? id;
  final String? name;

  NameModel({this.id, this.name});
}

@Entity()
class UrlModel {
  @Id()
  int internalId = 0;
  int? id;
  final String? url;

  UrlModel({this.id, this.url});
}
