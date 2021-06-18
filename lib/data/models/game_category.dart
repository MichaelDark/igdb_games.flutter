import 'package:json_annotation/json_annotation.dart';

enum GameCategory {
  @JsonValue(0)
  mainGame,
  @JsonValue(1)
  dlcAddon,
  @JsonValue(2)
  expansion,
  @JsonValue(3)
  bundle,
  @JsonValue(4)
  standaloneExpansion,
  @JsonValue(5)
  mod,
  @JsonValue(6)
  episode,
  @JsonValue(7)
  season,
  @JsonValue(8)
  remake,
  @JsonValue(9)
  remaster,
  @JsonValue(10)
  expandedGame,
  @JsonValue(11)
  port,
  @JsonValue(12)
  fork,
}
