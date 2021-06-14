import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'game.dart';
import 'game_category_enum.dart';
import 'game_status_enum.dart';

part 'serializers.g.dart';

@SerializersFor([
  Game,
  GameCategoryEnum,
  GameStatusEnum,
])
Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
