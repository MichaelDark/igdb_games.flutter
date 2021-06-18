// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiGame _$ApiGameFromJson(Map<String, dynamic> json) {
  return ApiGame(
    id: json['id'] as int?,
    category: _$enumDecodeNullable(_$GameCategoryEnumMap, json['category']),
    status: _$enumDecodeNullable(_$GameStatusEnumMap, json['status']),
    createdAt: ApiGame._fromJson(json['created_at'] as int?),
    updatedAt: ApiGame._fromJson(json['updated_at'] as int?),
    firstReleaseDate: ApiGame._fromJson(json['first_release_date'] as int?),
    name: json['name'] as String?,
    slug: json['slug'] as String?,
    summary: json['summary'] as String?,
    url: json['url'] as String?,
    cover: json['cover'] == null
        ? null
        : UrlModel.fromJson(json['cover'] as Map<String, dynamic>),
    gameModes: (json['game_modes'] as List<dynamic>?)
        ?.map((e) => NameModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    genres: (json['genres'] as List<dynamic>?)
        ?.map((e) => NameModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    keywords: (json['keywords'] as List<dynamic>?)
        ?.map((e) => NameModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    platforms: (json['platforms'] as List<dynamic>?)
        ?.map((e) => NameModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    themes: (json['themes'] as List<dynamic>?)
        ?.map((e) => NameModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    screenshots: (json['screenshots'] as List<dynamic>?)
        ?.map((e) => UrlModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    websites: (json['websites'] as List<dynamic>?)
        ?.map((e) => UrlModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ApiGameToJson(ApiGame instance) => <String, dynamic>{
      'id': instance.id,
      'category': _$GameCategoryEnumMap[instance.category],
      'status': _$GameStatusEnumMap[instance.status],
      'created_at': ApiGame._toJson(instance.createdAt),
      'updated_at': ApiGame._toJson(instance.updatedAt),
      'first_release_date': ApiGame._toJson(instance.firstReleaseDate),
      'name': instance.name,
      'slug': instance.slug,
      'summary': instance.summary,
      'url': instance.url,
      'cover': instance.cover,
      'game_modes': instance.gameModes,
      'genres': instance.genres,
      'keywords': instance.keywords,
      'platforms': instance.platforms,
      'themes': instance.themes,
      'screenshots': instance.screenshots,
      'websites': instance.websites,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$GameCategoryEnumMap = {
  GameCategory.mainGame: 0,
  GameCategory.dlcAddon: 1,
  GameCategory.expansion: 2,
  GameCategory.bundle: 3,
  GameCategory.standaloneExpansion: 4,
  GameCategory.mod: 5,
  GameCategory.episode: 6,
  GameCategory.season: 7,
  GameCategory.remake: 8,
  GameCategory.remaster: 9,
  GameCategory.expandedGame: 10,
  GameCategory.port: 11,
  GameCategory.fork: 12,
};

const _$GameStatusEnumMap = {
  GameStatus.released: 0,
  GameStatus.alpha: 2,
  GameStatus.beta: 3,
  GameStatus.earlyAccess: 4,
  GameStatus.offline: 5,
  GameStatus.cancelled: 6,
  GameStatus.rumored: 7,
};

NameModel _$NameModelFromJson(Map<String, dynamic> json) {
  return NameModel(
    json['name'] as String?,
  );
}

Map<String, dynamic> _$NameModelToJson(NameModel instance) => <String, dynamic>{
      'name': instance.name,
    };

UrlModel _$UrlModelFromJson(Map<String, dynamic> json) {
  return UrlModel(
    json['url'] as String?,
  );
}

Map<String, dynamic> _$UrlModelToJson(UrlModel instance) => <String, dynamic>{
      'url': instance.url,
    };
