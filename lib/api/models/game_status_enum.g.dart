// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_status_enum.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GameStatusEnum _$released = const GameStatusEnum._('released');
const GameStatusEnum _$alpha = const GameStatusEnum._('alpha');
const GameStatusEnum _$beta = const GameStatusEnum._('beta');
const GameStatusEnum _$earlyAccess = const GameStatusEnum._('earlyAccess');
const GameStatusEnum _$offline = const GameStatusEnum._('offline');
const GameStatusEnum _$cancelled = const GameStatusEnum._('cancelled');
const GameStatusEnum _$rumored = const GameStatusEnum._('rumored');

GameStatusEnum _$wireValueOf(String name) {
  switch (name) {
    case 'released':
      return _$released;
    case 'alpha':
      return _$alpha;
    case 'beta':
      return _$beta;
    case 'earlyAccess':
      return _$earlyAccess;
    case 'offline':
      return _$offline;
    case 'cancelled':
      return _$cancelled;
    case 'rumored':
      return _$rumored;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GameStatusEnum> _$wireValues =
    new BuiltSet<GameStatusEnum>(const <GameStatusEnum>[
  _$released,
  _$alpha,
  _$beta,
  _$earlyAccess,
  _$offline,
  _$cancelled,
  _$rumored,
]);

Serializer<GameStatusEnum> _$gameStatusEnumSerializer =
    new _$GameStatusEnumSerializer();

class _$GameStatusEnumSerializer
    implements PrimitiveSerializer<GameStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'released': 0,
    'alpha': 2,
    'beta': 3,
    'earlyAccess': 4,
    'offline': 5,
    'cancelled': 6,
    'rumored': 7,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    0: 'released',
    2: 'alpha',
    3: 'beta',
    4: 'earlyAccess',
    5: 'offline',
    6: 'cancelled',
    7: 'rumored',
  };

  @override
  final Iterable<Type> types = const <Type>[GameStatusEnum];
  @override
  final String wireName = 'GameStatusEnum';

  @override
  Object serialize(Serializers serializers, GameStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GameStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GameStatusEnum.valueOf(_fromWire[serialized] ?? serialized as String);
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
