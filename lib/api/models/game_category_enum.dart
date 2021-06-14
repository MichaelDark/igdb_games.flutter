import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'game_category_enum.g.dart';

class GameCategoryEnum extends EnumClass {
  static Serializer<GameCategoryEnum> get serializer =>
      _$gameCategoryEnumSerializer;

  @BuiltValueEnumConst(wireNumber: 0)
  static const GameCategoryEnum mainGame = _$mainGame;

  @BuiltValueEnumConst(wireNumber: 1)
  static const GameCategoryEnum dlcAddon = _$dlcAddon;

  @BuiltValueEnumConst(wireNumber: 2)
  static const GameCategoryEnum expansion = _$expansion;

  @BuiltValueEnumConst(wireNumber: 3)
  static const GameCategoryEnum bundle = _$bundle;

  @BuiltValueEnumConst(wireNumber: 4)
  static const GameCategoryEnum standaloneExpansion = _$standaloneExpansion;

  @BuiltValueEnumConst(wireNumber: 5)
  static const GameCategoryEnum mod = _$mod;

  @BuiltValueEnumConst(wireNumber: 6)
  static const GameCategoryEnum episode = _$episode;

  @BuiltValueEnumConst(wireNumber: 7)
  static const GameCategoryEnum season = _$season;

  @BuiltValueEnumConst(wireNumber: 8)
  static const GameCategoryEnum remake = _$remake;

  @BuiltValueEnumConst(wireNumber: 9)
  static const GameCategoryEnum remaster = _$remaster;

  @BuiltValueEnumConst(wireNumber: 10)
  static const GameCategoryEnum expandedGame = _$expandedGame;

  @BuiltValueEnumConst(wireNumber: 11)
  static const GameCategoryEnum port = _$port;

  @BuiltValueEnumConst(wireNumber: 12)
  static const GameCategoryEnum fork = _$fork;

  const GameCategoryEnum._(String name) : super(name);

  static BuiltSet<GameCategoryEnum> get values => _$wireValues;
  static GameCategoryEnum valueOf(String name) => _$wireValueOf(name);
}
