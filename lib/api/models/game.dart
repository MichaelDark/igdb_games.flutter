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
  GameStatusEnum? get status;

  @BuiltValueField(wireName: 'created_at')
  int? get createdAt;
  @BuiltValueField(wireName: 'updated_at')
  int? get updatedAt;
  @BuiltValueField(wireName: 'first_release_date')
  int? get firstReleaseDate;

  String? get name;
  String? get slug;
  String? get summary;
  String? get url;

  UrlModel? get cover;

  @BuiltValueField(wireName: 'game_modes')
  BuiltList<NameModel>? get gameModes;
  BuiltList<NameModel>? get genres;
  BuiltList<NameModel>? get keywords;
  BuiltList<NameModel>? get platforms;
  BuiltList<NameModel>? get themes;
  BuiltList<UrlModel>? get screenshots;
  BuiltList<UrlModel>? get websites;

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

abstract class NameModel implements Built<NameModel, NameModelBuilder> {
  int get id;
  String? get name;

  NameModel._();
  factory NameModel([void Function(NameModelBuilder) updates]) = _$NameModel;

  Object? toJson() {
    return serializers.serializeWith(NameModel.serializer, this);
  }

  static NameModel? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(NameModel.serializer, json);
  }

  static Serializer<NameModel> get serializer => _$nameModelSerializer;
}

abstract class UrlModel implements Built<UrlModel, UrlModelBuilder> {
  String? get url;

  UrlModel._();
  factory UrlModel([void Function(UrlModelBuilder) updates]) = _$UrlModel;

  Object? toJson() {
    return serializers.serializeWith(UrlModel.serializer, this);
  }

  static UrlModel? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(UrlModel.serializer, json);
  }

  static Serializer<UrlModel> get serializer => _$urlModelSerializer;
}
