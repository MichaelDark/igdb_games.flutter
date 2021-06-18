import 'package:igdb_games/data/models/game_category.dart';
import 'package:igdb_games/data/models/game_status.dart';

class Game {
  final int? id;
  final GameCategory? category;
  final GameStatus? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? firstReleaseDate;
  final String? name;
  final String? slug;
  final String? summary;
  final String? url;
  final String? cover;
  final List<String>? gameModes;
  final List<String>? genres;
  final List<String>? keywords;
  final List<String>? platforms;
  final List<String>? themes;
  final List<String>? screenshots;
  final List<String>? websites;

  Game({
    this.id,
    this.category,
    this.status,
    this.createdAt,
    this.updatedAt,
    this.firstReleaseDate,
    this.name,
    this.slug,
    this.summary,
    this.url,
    this.cover,
    this.gameModes,
    this.genres,
    this.keywords,
    this.platforms,
    this.themes,
    this.screenshots,
    this.websites,
  });
}
