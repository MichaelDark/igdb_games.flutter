import 'package:json_annotation/json_annotation.dart';

import 'game_category.dart';
import 'game_status.dart';

part 'api_game.g.dart';

@JsonSerializable()
class ApiGame {
  static DateTime? _fromJson(int? value) =>
      value == null ? null : DateTime.fromMillisecondsSinceEpoch(value * 1000);
  static int? _toJson(DateTime? time) => time?.millisecondsSinceEpoch == null
      ? null
      : time!.millisecondsSinceEpoch ~/ 1000;

  final int? id;
  final GameCategory? category;
  final GameStatus? status;
  @JsonKey(name: 'created_at', fromJson: _fromJson, toJson: _toJson)
  final DateTime? createdAt;
  @JsonKey(name: 'updated_at', fromJson: _fromJson, toJson: _toJson)
  final DateTime? updatedAt;
  @JsonKey(name: 'first_release_date', fromJson: _fromJson, toJson: _toJson)
  final DateTime? firstReleaseDate;
  final String? name;
  final String? slug;
  final String? summary;
  final String? url;
  @JsonKey(name: 'cover')
  final UrlModel? cover;
  @JsonKey(name: 'game_modes')
  final List<NameModel>? gameModes;
  final List<NameModel>? genres;
  final List<NameModel>? keywords;
  final List<NameModel>? platforms;
  final List<NameModel>? themes;
  final List<UrlModel>? screenshots;
  final List<UrlModel>? websites;

  ApiGame({
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

  factory ApiGame.fromJson(Map<String, dynamic> json) =>
      _$ApiGameFromJson(json);
  Map<String, dynamic> toJson() => _$ApiGameToJson(this);
}

@JsonSerializable()
class NameModel {
  final String? name;

  NameModel(this.name);

  factory NameModel.fromJson(Map<String, dynamic> json) =>
      _$NameModelFromJson(json);
  Map<String, dynamic> toJson() => _$NameModelToJson(this);
}

@JsonSerializable()
class UrlModel {
  final String? url;

  UrlModel(this.url);

  factory UrlModel.fromJson(Map<String, dynamic> json) =>
      _$UrlModelFromJson(json);
  Map<String, dynamic> toJson() => _$UrlModelToJson(this);
}
