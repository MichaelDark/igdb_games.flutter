// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Game> _$gameSerializer = new _$GameSerializer();

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
    value = object.cover;
    if (value != null) {
      result
        ..add('cover')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.firstReleaseDate;
    if (value != null) {
      result
        ..add('firstReleaseDate')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GameStatusEnum)));
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
    value = object.checksum;
    if (value != null) {
      result
        ..add('checksum')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.externalGames;
    if (value != null) {
      result
        ..add('externalGames')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.gameModes;
    if (value != null) {
      result
        ..add('gameModes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.genres;
    if (value != null) {
      result
        ..add('genres')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.keywords;
    if (value != null) {
      result
        ..add('keywords')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.platforms;
    if (value != null) {
      result
        ..add('platforms')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.releaseDates;
    if (value != null) {
      result
        ..add('releaseDates')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.screenshots;
    if (value != null) {
      result
        ..add('screenshots')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.similarGames;
    if (value != null) {
      result
        ..add('similarGames')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.tags;
    if (value != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.themes;
    if (value != null) {
      result
        ..add('themes')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    value = object.websites;
    if (value != null) {
      result
        ..add('websites')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
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
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'firstReleaseDate':
          result.firstReleaseDate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(GameStatusEnum)) as GameStatusEnum;
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
        case 'checksum':
          result.checksum = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'externalGames':
          result.externalGames.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object>);
          break;
        case 'gameModes':
          result.gameModes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object>);
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object>);
          break;
        case 'keywords':
          result.keywords.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object>);
          break;
        case 'platforms':
          result.platforms.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object>);
          break;
        case 'releaseDates':
          result.releaseDates.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object>);
          break;
        case 'screenshots':
          result.screenshots.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object>);
          break;
        case 'similarGames':
          result.similarGames.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object>);
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object>);
          break;
        case 'themes':
          result.themes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object>);
          break;
        case 'websites':
          result.websites.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object>);
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
  final int? cover;
  @override
  final int? createdAt;
  @override
  final int? updatedAt;
  @override
  final int? firstReleaseDate;
  @override
  final GameStatusEnum? status;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final String? summary;
  @override
  final String? url;
  @override
  final String? checksum;
  @override
  final BuiltList<int>? externalGames;
  @override
  final BuiltList<int>? gameModes;
  @override
  final BuiltList<int>? genres;
  @override
  final BuiltList<int>? keywords;
  @override
  final BuiltList<int>? platforms;
  @override
  final BuiltList<int>? releaseDates;
  @override
  final BuiltList<int>? screenshots;
  @override
  final BuiltList<int>? similarGames;
  @override
  final BuiltList<int>? tags;
  @override
  final BuiltList<int>? themes;
  @override
  final BuiltList<int>? websites;

  factory _$Game([void Function(GameBuilder)? updates]) =>
      (new GameBuilder()..update(updates)).build();

  _$Game._(
      {required this.id,
      this.category,
      this.cover,
      this.createdAt,
      this.updatedAt,
      this.firstReleaseDate,
      this.status,
      this.name,
      this.slug,
      this.summary,
      this.url,
      this.checksum,
      this.externalGames,
      this.gameModes,
      this.genres,
      this.keywords,
      this.platforms,
      this.releaseDates,
      this.screenshots,
      this.similarGames,
      this.tags,
      this.themes,
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
        cover == other.cover &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        firstReleaseDate == other.firstReleaseDate &&
        status == other.status &&
        name == other.name &&
        slug == other.slug &&
        summary == other.summary &&
        url == other.url &&
        checksum == other.checksum &&
        externalGames == other.externalGames &&
        gameModes == other.gameModes &&
        genres == other.genres &&
        keywords == other.keywords &&
        platforms == other.platforms &&
        releaseDates == other.releaseDates &&
        screenshots == other.screenshots &&
        similarGames == other.similarGames &&
        tags == other.tags &&
        themes == other.themes &&
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
                                                                            $jc($jc($jc($jc($jc(0, id.hashCode), category.hashCode), cover.hashCode), createdAt.hashCode),
                                                                                updatedAt.hashCode),
                                                                            firstReleaseDate.hashCode),
                                                                        status.hashCode),
                                                                    name.hashCode),
                                                                slug.hashCode),
                                                            summary.hashCode),
                                                        url.hashCode),
                                                    checksum.hashCode),
                                                externalGames.hashCode),
                                            gameModes.hashCode),
                                        genres.hashCode),
                                    keywords.hashCode),
                                platforms.hashCode),
                            releaseDates.hashCode),
                        screenshots.hashCode),
                    similarGames.hashCode),
                tags.hashCode),
            themes.hashCode),
        websites.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Game')
          ..add('id', id)
          ..add('category', category)
          ..add('cover', cover)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('firstReleaseDate', firstReleaseDate)
          ..add('status', status)
          ..add('name', name)
          ..add('slug', slug)
          ..add('summary', summary)
          ..add('url', url)
          ..add('checksum', checksum)
          ..add('externalGames', externalGames)
          ..add('gameModes', gameModes)
          ..add('genres', genres)
          ..add('keywords', keywords)
          ..add('platforms', platforms)
          ..add('releaseDates', releaseDates)
          ..add('screenshots', screenshots)
          ..add('similarGames', similarGames)
          ..add('tags', tags)
          ..add('themes', themes)
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

  int? _cover;
  int? get cover => _$this._cover;
  set cover(int? cover) => _$this._cover = cover;

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

  GameStatusEnum? _status;
  GameStatusEnum? get status => _$this._status;
  set status(GameStatusEnum? status) => _$this._status = status;

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

  String? _checksum;
  String? get checksum => _$this._checksum;
  set checksum(String? checksum) => _$this._checksum = checksum;

  ListBuilder<int>? _externalGames;
  ListBuilder<int> get externalGames =>
      _$this._externalGames ??= new ListBuilder<int>();
  set externalGames(ListBuilder<int>? externalGames) =>
      _$this._externalGames = externalGames;

  ListBuilder<int>? _gameModes;
  ListBuilder<int> get gameModes =>
      _$this._gameModes ??= new ListBuilder<int>();
  set gameModes(ListBuilder<int>? gameModes) => _$this._gameModes = gameModes;

  ListBuilder<int>? _genres;
  ListBuilder<int> get genres => _$this._genres ??= new ListBuilder<int>();
  set genres(ListBuilder<int>? genres) => _$this._genres = genres;

  ListBuilder<int>? _keywords;
  ListBuilder<int> get keywords => _$this._keywords ??= new ListBuilder<int>();
  set keywords(ListBuilder<int>? keywords) => _$this._keywords = keywords;

  ListBuilder<int>? _platforms;
  ListBuilder<int> get platforms =>
      _$this._platforms ??= new ListBuilder<int>();
  set platforms(ListBuilder<int>? platforms) => _$this._platforms = platforms;

  ListBuilder<int>? _releaseDates;
  ListBuilder<int> get releaseDates =>
      _$this._releaseDates ??= new ListBuilder<int>();
  set releaseDates(ListBuilder<int>? releaseDates) =>
      _$this._releaseDates = releaseDates;

  ListBuilder<int>? _screenshots;
  ListBuilder<int> get screenshots =>
      _$this._screenshots ??= new ListBuilder<int>();
  set screenshots(ListBuilder<int>? screenshots) =>
      _$this._screenshots = screenshots;

  ListBuilder<int>? _similarGames;
  ListBuilder<int> get similarGames =>
      _$this._similarGames ??= new ListBuilder<int>();
  set similarGames(ListBuilder<int>? similarGames) =>
      _$this._similarGames = similarGames;

  ListBuilder<int>? _tags;
  ListBuilder<int> get tags => _$this._tags ??= new ListBuilder<int>();
  set tags(ListBuilder<int>? tags) => _$this._tags = tags;

  ListBuilder<int>? _themes;
  ListBuilder<int> get themes => _$this._themes ??= new ListBuilder<int>();
  set themes(ListBuilder<int>? themes) => _$this._themes = themes;

  ListBuilder<int>? _websites;
  ListBuilder<int> get websites => _$this._websites ??= new ListBuilder<int>();
  set websites(ListBuilder<int>? websites) => _$this._websites = websites;

  GameBuilder();

  GameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _category = $v.category;
      _cover = $v.cover;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _firstReleaseDate = $v.firstReleaseDate;
      _status = $v.status;
      _name = $v.name;
      _slug = $v.slug;
      _summary = $v.summary;
      _url = $v.url;
      _checksum = $v.checksum;
      _externalGames = $v.externalGames?.toBuilder();
      _gameModes = $v.gameModes?.toBuilder();
      _genres = $v.genres?.toBuilder();
      _keywords = $v.keywords?.toBuilder();
      _platforms = $v.platforms?.toBuilder();
      _releaseDates = $v.releaseDates?.toBuilder();
      _screenshots = $v.screenshots?.toBuilder();
      _similarGames = $v.similarGames?.toBuilder();
      _tags = $v.tags?.toBuilder();
      _themes = $v.themes?.toBuilder();
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
              cover: cover,
              createdAt: createdAt,
              updatedAt: updatedAt,
              firstReleaseDate: firstReleaseDate,
              status: status,
              name: name,
              slug: slug,
              summary: summary,
              url: url,
              checksum: checksum,
              externalGames: _externalGames?.build(),
              gameModes: _gameModes?.build(),
              genres: _genres?.build(),
              keywords: _keywords?.build(),
              platforms: _platforms?.build(),
              releaseDates: _releaseDates?.build(),
              screenshots: _screenshots?.build(),
              similarGames: _similarGames?.build(),
              tags: _tags?.build(),
              themes: _themes?.build(),
              websites: _websites?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'externalGames';
        _externalGames?.build();
        _$failedField = 'gameModes';
        _gameModes?.build();
        _$failedField = 'genres';
        _genres?.build();
        _$failedField = 'keywords';
        _keywords?.build();
        _$failedField = 'platforms';
        _platforms?.build();
        _$failedField = 'releaseDates';
        _releaseDates?.build();
        _$failedField = 'screenshots';
        _screenshots?.build();
        _$failedField = 'similarGames';
        _similarGames?.build();
        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'themes';
        _themes?.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
