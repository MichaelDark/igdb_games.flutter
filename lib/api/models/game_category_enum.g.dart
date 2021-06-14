// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_category_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GameCategoryEnum _$mainGame = const GameCategoryEnum._('mainGame');
const GameCategoryEnum _$dlcAddon = const GameCategoryEnum._('dlcAddon');
const GameCategoryEnum _$expansion = const GameCategoryEnum._('expansion');
const GameCategoryEnum _$bundle = const GameCategoryEnum._('bundle');
const GameCategoryEnum _$standaloneExpansion =
    const GameCategoryEnum._('standaloneExpansion');
const GameCategoryEnum _$mod = const GameCategoryEnum._('mod');
const GameCategoryEnum _$episode = const GameCategoryEnum._('episode');
const GameCategoryEnum _$season = const GameCategoryEnum._('season');
const GameCategoryEnum _$remake = const GameCategoryEnum._('remake');
const GameCategoryEnum _$remaster = const GameCategoryEnum._('remaster');
const GameCategoryEnum _$expandedGame =
    const GameCategoryEnum._('expandedGame');
const GameCategoryEnum _$port = const GameCategoryEnum._('port');
const GameCategoryEnum _$fork = const GameCategoryEnum._('fork');

GameCategoryEnum _$wireValueOf(String name) {
  switch (name) {
    case 'mainGame':
      return _$mainGame;
    case 'dlcAddon':
      return _$dlcAddon;
    case 'expansion':
      return _$expansion;
    case 'bundle':
      return _$bundle;
    case 'standaloneExpansion':
      return _$standaloneExpansion;
    case 'mod':
      return _$mod;
    case 'episode':
      return _$episode;
    case 'season':
      return _$season;
    case 'remake':
      return _$remake;
    case 'remaster':
      return _$remaster;
    case 'expandedGame':
      return _$expandedGame;
    case 'port':
      return _$port;
    case 'fork':
      return _$fork;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GameCategoryEnum> _$wireValues =
    new BuiltSet<GameCategoryEnum>(const <GameCategoryEnum>[
  _$mainGame,
  _$dlcAddon,
  _$expansion,
  _$bundle,
  _$standaloneExpansion,
  _$mod,
  _$episode,
  _$season,
  _$remake,
  _$remaster,
  _$expandedGame,
  _$port,
  _$fork,
]);

Serializer<GameCategoryEnum> _$gameCategoryEnumSerializer =
    new _$GameCategoryEnumSerializer();

class _$GameCategoryEnumSerializer
    implements PrimitiveSerializer<GameCategoryEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'mainGame': 0,
    'dlcAddon': 1,
    'expansion': 2,
    'bundle': 3,
    'standaloneExpansion': 4,
    'mod': 5,
    'episode': 6,
    'season': 7,
    'remake': 8,
    'remaster': 9,
    'expandedGame': 10,
    'port': 11,
    'fork': 12,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    0: 'mainGame',
    1: 'dlcAddon',
    2: 'expansion',
    3: 'bundle',
    4: 'standaloneExpansion',
    5: 'mod',
    6: 'episode',
    7: 'season',
    8: 'remake',
    9: 'remaster',
    10: 'expandedGame',
    11: 'port',
    12: 'fork',
  };

  @override
  final Iterable<Type> types = const <Type>[GameCategoryEnum];
  @override
  final String wireName = 'GameCategoryEnum';

  @override
  Object serialize(Serializers serializers, GameCategoryEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GameCategoryEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GameCategoryEnum.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
