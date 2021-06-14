import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'game_category_enum.dart';
import 'game_status_enum.dart';
import 'serializers.dart';

part 'game.g.dart';

abstract class Game implements Built<Game, GameBuilder> {
  int get id;
  GameCategoryEnum? get category;
  int? get cover;
  int? get createdAt;
  int? get updatedAt;
  int? get firstReleaseDate;
  GameStatusEnum? get status;
  String? get name;
  String? get slug;
  String? get summary;
  String? get url;
  String? get checksum;
  BuiltList<int>? get externalGames;
  BuiltList<int>? get gameModes;
  BuiltList<int>? get genres;
  BuiltList<int>? get keywords;
  BuiltList<int>? get platforms;
  BuiltList<int>? get releaseDates;
  BuiltList<int>? get screenshots;
  BuiltList<int>? get similarGames;
  BuiltList<int>? get tags;
  BuiltList<int>? get themes;
  BuiltList<int>? get websites;

  Game._();
  factory Game([void Function(GameBuilder) updates]) = _$Game;

  Object? toJson() {
    return serializers.serializeWith(Game.serializer, this);
  }

  static Game? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(Game.serializer, json);
  }

  static Serializer<Game> get serializer => _$gameSerializer;
}
