import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'game_status_enum.g.dart';

class GameStatusEnum extends EnumClass {
  static Serializer<GameStatusEnum> get serializer =>
      _$gameStatusEnumSerializer;

  @BuiltValueEnumConst(wireNumber: 0)
  static const GameStatusEnum released = _$released;

  @BuiltValueEnumConst(wireNumber: 2)
  static const GameStatusEnum alpha = _$alpha;

  @BuiltValueEnumConst(wireNumber: 3)
  static const GameStatusEnum beta = _$beta;

  @BuiltValueEnumConst(wireNumber: 4)
  static const GameStatusEnum earlyAccess = _$earlyAccess;

  @BuiltValueEnumConst(wireNumber: 5)
  static const GameStatusEnum offline = _$offline;

  @BuiltValueEnumConst(wireNumber: 6)
  static const GameStatusEnum cancelled = _$cancelled;

  @BuiltValueEnumConst(wireNumber: 7)
  static const GameStatusEnum rumored = _$rumored;

  const GameStatusEnum._(String name) : super(name);

  static BuiltSet<GameStatusEnum> get values => _$wireValues;
  static GameStatusEnum valueOf(String name) => _$wireValueOf(name);
}
