import 'package:json_annotation/json_annotation.dart';

enum GameStatus {
  @JsonValue(0)
  released,
  @JsonValue(2)
  alpha,
  @JsonValue(3)
  beta,
  @JsonValue(4)
  earlyAccess,
  @JsonValue(5)
  offline,
  @JsonValue(6)
  cancelled,
  @JsonValue(7)
  rumored,
}
