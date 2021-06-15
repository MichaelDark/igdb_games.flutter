// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Game> _$gameSerializer = new _$GameSerializer();
Serializer<NameModel> _$nameModelSerializer = new _$NameModelSerializer();
Serializer<UrlModel> _$urlModelSerializer = new _$UrlModelSerializer();

class _$GameSerializer implements StructuredSerializer<Game> {
  @override
  final Iterable<Type> types = const [Game, _$Game];
  @override
  final String wireName = 'Game';

  @override
  Iterable<Object?> serialize(Serializers serializers, Game object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GameCategoryEnum)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GameStatusEnum)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.firstReleaseDate;
    if (value != null) {
      result
        ..add('first_release_date')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.slug;
    if (value != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.summary;
    if (value != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cover;
    if (value != null) {
      result
        ..add('cover')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UrlModel)));
    }
    value = object.gameModes;
    if (value != null) {
      result
        ..add('game_modes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NameModel)])));
    }
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NameModel)])));
    }
    value = object.keywords;
    if (value != null) {
      result
        ..add('keywords')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NameModel)])));
    }
    value = object.platforms;
    if (value != null) {
      result
        ..add('platforms')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NameModel)])));
    }
    value = object.themes;
    if (value != null) {
      result
        ..add('themes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(NameModel)])));
    }
    value = object.screenshots;
    if (value != null) {
      result
        ..add('screenshots')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(UrlModel)])));
    }
    value = object.websites;
    if (value != null) {
      result
        ..add('websites')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(UrlModel)])));
    }
    return result;
  }

  @override
  Game deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
                  specifiedType: const FullType(GameCategoryEnum))
              as GameCategoryEnum;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(GameStatusEnum)) as GameStatusEnum;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'first_release_date':
          result.firstReleaseDate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cover':
          result.cover.replace(serializers.deserialize(value,
              specifiedType: const FullType(UrlModel))! as UrlModel);
          break;
        case 'game_modes':
          result.gameModes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NameModel)]))!
              as BuiltList<Object>);
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NameModel)]))!
              as BuiltList<Object>);
          break;
        case 'keywords':
          result.keywords.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NameModel)]))!
              as BuiltList<Object>);
          break;
        case 'platforms':
          result.platforms.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NameModel)]))!
              as BuiltList<Object>);
          break;
        case 'themes':
          result.themes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NameModel)]))!
              as BuiltList<Object>);
          break;
        case 'screenshots':
          result.screenshots.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(UrlModel)]))!
              as BuiltList<Object>);
          break;
        case 'websites':
          result.websites.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(UrlModel)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$NameModelSerializer implements StructuredSerializer<NameModel> {
  @override
  final Iterable<Type> types = const [NameModel, _$NameModel];
  @override
  final String wireName = 'NameModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, NameModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  NameModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NameModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UrlModelSerializer implements StructuredSerializer<UrlModel> {
  @override
  final Iterable<Type> types = const [UrlModel, _$UrlModel];
  @override
  final String wireName = 'UrlModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, UrlModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.url;
    if (value != null) {
      result
        ..add('url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UrlModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UrlModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Game extends Game {
  @override
  final int id;
  @override
  final GameCategoryEnum? category;
  @override
  final GameStatusEnum? status;
  @override
  final int? createdAt;
  @override
  final int? updatedAt;
  @override
  final int? firstReleaseDate;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? summary;
  @override
  final String? url;
  @override
  final UrlModel? cover;
  @override
  final BuiltList<NameModel>? gameModes;
  @override
  final BuiltList<NameModel>? genres;
  @override
  final BuiltList<NameModel>? keywords;
  @override
  final BuiltList<NameModel>? platforms;
  @override
  final BuiltList<NameModel>? themes;
  @override
  final BuiltList<UrlModel>? screenshots;
  @override
  final BuiltList<UrlModel>? websites;

  factory _$Game([void Function(GameBuilder)? updates]) =>
      (new GameBuilder()..update(updates)).build();

  _$Game._(
      {required this.id,
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
      this.websites})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Game', 'id');
  }

  @override
  Game rebuild(void Function(GameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameBuilder toBuilder() => new GameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Game &&
        id == other.id &&
        category == other.category &&
        status == other.status &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        firstReleaseDate == other.firstReleaseDate &&
        name == other.name &&
        slug == other.slug &&
        summary == other.summary &&
        url == other.url &&
        cover == other.cover &&
        gameModes == other.gameModes &&
        genres == other.genres &&
        keywords == other.keywords &&
        platforms == other.platforms &&
        themes == other.themes &&
        screenshots == other.screenshots &&
        websites == other.websites;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            id
                                                                                .hashCode),
                                                                        category
                                                                            .hashCode),
                                                                    status
                                                                        .hashCode),
                                                                createdAt
                                                                    .hashCode),
                                                            updatedAt.hashCode),
                                                        firstReleaseDate
                                                            .hashCode),
                                                    name.hashCode),
                                                slug.hashCode),
                                            summary.hashCode),
                                        url.hashCode),
                                    cover.hashCode),
                                gameModes.hashCode),
                            genres.hashCode),
                        keywords.hashCode),
                    platforms.hashCode),
                themes.hashCode),
            screenshots.hashCode),
        websites.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Game')
          ..add('id', id)
          ..add('category', category)
          ..add('status', status)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('firstReleaseDate', firstReleaseDate)
          ..add('name', name)
          ..add('slug', slug)
          ..add('summary', summary)
          ..add('url', url)
          ..add('cover', cover)
          ..add('gameModes', gameModes)
          ..add('genres', genres)
          ..add('keywords', keywords)
          ..add('platforms', platforms)
          ..add('themes', themes)
          ..add('screenshots', screenshots)
          ..add('websites', websites))
        .toString();
  }
}

class GameBuilder implements Builder<Game, GameBuilder> {
  _$Game? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  GameCategoryEnum? _category;
  GameCategoryEnum? get category => _$this._category;
  set category(GameCategoryEnum? category) => _$this._category = category;

  GameStatusEnum? _status;
  GameStatusEnum? get status => _$this._status;
  set status(GameStatusEnum? status) => _$this._status = status;

  int? _createdAt;
  int? get createdAt => _$this._createdAt;
  set createdAt(int? createdAt) => _$this._createdAt = createdAt;

  int? _updatedAt;
  int? get updatedAt => _$this._updatedAt;
  set updatedAt(int? updatedAt) => _$this._updatedAt = updatedAt;

  int? _firstReleaseDate;
  int? get firstReleaseDate => _$this._firstReleaseDate;
  set firstReleaseDate(int? firstReleaseDate) =>
      _$this._firstReleaseDate = firstReleaseDate;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _slug;
  String? get slug => _$this._slug;
  set slug(String? slug) => _$this._slug = slug;

  String? _summary;
  String? get summary => _$this._summary;
  set summary(String? summary) => _$this._summary = summary;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  UrlModelBuilder? _cover;
  UrlModelBuilder get cover => _$this._cover ??= new UrlModelBuilder();
  set cover(UrlModelBuilder? cover) => _$this._cover = cover;

  ListBuilder<NameModel>? _gameModes;
  ListBuilder<NameModel> get gameModes =>
      _$this._gameModes ??= new ListBuilder<NameModel>();
  set gameModes(ListBuilder<NameModel>? gameModes) =>
      _$this._gameModes = gameModes;

  ListBuilder<NameModel>? _genres;
  ListBuilder<NameModel> get genres =>
      _$this._genres ??= new ListBuilder<NameModel>();
  set genres(ListBuilder<NameModel>? genres) => _$this._genres = genres;

  ListBuilder<NameModel>? _keywords;
  ListBuilder<NameModel> get keywords =>
      _$this._keywords ??= new ListBuilder<NameModel>();
  set keywords(ListBuilder<NameModel>? keywords) => _$this._keywords = keywords;

  ListBuilder<NameModel>? _platforms;
  ListBuilder<NameModel> get platforms =>
      _$this._platforms ??= new ListBuilder<NameModel>();
  set platforms(ListBuilder<NameModel>? platforms) =>
      _$this._platforms = platforms;

  ListBuilder<NameModel>? _themes;
  ListBuilder<NameModel> get themes =>
      _$this._themes ??= new ListBuilder<NameModel>();
  set themes(ListBuilder<NameModel>? themes) => _$this._themes = themes;

  ListBuilder<UrlModel>? _screenshots;
  ListBuilder<UrlModel> get screenshots =>
      _$this._screenshots ??= new ListBuilder<UrlModel>();
  set screenshots(ListBuilder<UrlModel>? screenshots) =>
      _$this._screenshots = screenshots;

  ListBuilder<UrlModel>? _websites;
  ListBuilder<UrlModel> get websites =>
      _$this._websites ??= new ListBuilder<UrlModel>();
  set websites(ListBuilder<UrlModel>? websites) => _$this._websites = websites;

  GameBuilder();

  GameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _category = $v.category;
      _status = $v.status;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _firstReleaseDate = $v.firstReleaseDate;
      _name = $v.name;
      _slug = $v.slug;
      _summary = $v.summary;
      _url = $v.url;
      _cover = $v.cover?.toBuilder();
      _gameModes = $v.gameModes?.toBuilder();
      _genres = $v.genres?.toBuilder();
      _keywords = $v.keywords?.toBuilder();
      _platforms = $v.platforms?.toBuilder();
      _themes = $v.themes?.toBuilder();
      _screenshots = $v.screenshots?.toBuilder();
      _websites = $v.websites?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Game other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Game;
  }

  @override
  void update(void Function(GameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Game build() {
    _$Game _$result;
    try {
      _$result = _$v ??
          new _$Game._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Game', 'id'),
              category: category,
              status: status,
              createdAt: createdAt,
              updatedAt: updatedAt,
              firstReleaseDate: firstReleaseDate,
              name: name,
              slug: slug,
              summary: summary,
              url: url,
              cover: _cover?.build(),
              gameModes: _gameModes?.build(),
              genres: _genres?.build(),
              keywords: _keywords?.build(),
              platforms: _platforms?.build(),
              themes: _themes?.build(),
              screenshots: _screenshots?.build(),
              websites: _websites?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'cover';
        _cover?.build();
        _$failedField = 'gameModes';
        _gameModes?.build();
        _$failedField = 'genres';
        _genres?.build();
        _$failedField = 'keywords';
        _keywords?.build();
        _$failedField = 'platforms';
        _platforms?.build();
        _$failedField = 'themes';
        _themes?.build();
        _$failedField = 'screenshots';
        _screenshots?.build();
        _$failedField = 'websites';
        _websites?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Game', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NameModel extends NameModel {
  @override
  final int id;
  @override
  final String? name;

  factory _$NameModel([void Function(NameModelBuilder)? updates]) =>
      (new NameModelBuilder()..update(updates)).build();

  _$NameModel._({required this.id, this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'NameModel', 'id');
  }

  @override
  NameModel rebuild(void Function(NameModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NameModelBuilder toBuilder() => new NameModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NameModel && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NameModel')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class NameModelBuilder implements Builder<NameModel, NameModelBuilder> {
  _$NameModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  NameModelBuilder();

  NameModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NameModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NameModel;
  }

  @override
  void update(void Function(NameModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NameModel build() {
    final _$result = _$v ??
        new _$NameModel._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'NameModel', 'id'),
            name: name);
    replace(_$result);
    return _$result;
  }
}

class _$UrlModel extends UrlModel {
  @override
  final String? url;

  factory _$UrlModel([void Function(UrlModelBuilder)? updates]) =>
      (new UrlModelBuilder()..update(updates)).build();

  _$UrlModel._({this.url}) : super._();

  @override
  UrlModel rebuild(void Function(UrlModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UrlModelBuilder toBuilder() => new UrlModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UrlModel && url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(0, url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UrlModel')..add('url', url))
        .toString();
  }
}

class UrlModelBuilder implements Builder<UrlModel, UrlModelBuilder> {
  _$UrlModel? _$v;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  UrlModelBuilder();

  UrlModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UrlModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UrlModel;
  }

  @override
  void update(void Function(UrlModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UrlModel build() {
    final _$result = _$v ?? new _$UrlModel._(url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
