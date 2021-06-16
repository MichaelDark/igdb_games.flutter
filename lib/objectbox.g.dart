// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:objectbox/flatbuffers/flat_buffers.dart' as fb;
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'package:objectbox/objectbox.dart';

import 'data/models/game.dart';

export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file

final _entities = <ModelEntity>[
  ModelEntity(
      id: const IdUid(1, 1188161048857765033),
      name: 'Game',
      lastPropertyId: const IdUid(21, 5955397604799266581),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6010584502150195953),
            name: 'id',
            type: 6,
            flags: 129),
        ModelProperty(
            id: const IdUid(10, 2676654004554434601),
            name: 'createdAt',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(11, 1816957462286929127),
            name: 'updatedAt',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(12, 286026215416494346),
            name: 'firstReleaseDate',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(13, 661237754508088345),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(14, 5966244874299168872),
            name: 'slug',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(15, 1015163196446130733),
            name: 'summary',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(16, 5629190031106107347),
            name: 'url',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(17, 2226532489180600761),
            name: 'coverUrl',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(20, 2170189080815869131),
            name: 'categoryIndex',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(21, 5955397604799266581),
            name: 'statusIndex',
            type: 6,
            flags: 0)
      ],
      relations: <ModelRelation>[
        ModelRelation(
            id: const IdUid(1, 7370383403459599715),
            name: 'gameModes',
            targetId: const IdUid(2, 4408454832837012543)),
        ModelRelation(
            id: const IdUid(2, 8512588719044494754),
            name: 'genres',
            targetId: const IdUid(2, 4408454832837012543)),
        ModelRelation(
            id: const IdUid(3, 6693385869418589419),
            name: 'keywords',
            targetId: const IdUid(2, 4408454832837012543)),
        ModelRelation(
            id: const IdUid(4, 8306506497458407972),
            name: 'platforms',
            targetId: const IdUid(2, 4408454832837012543)),
        ModelRelation(
            id: const IdUid(5, 6385419912697898065),
            name: 'themes',
            targetId: const IdUid(2, 4408454832837012543)),
        ModelRelation(
            id: const IdUid(6, 3370398051879661284),
            name: 'screenshots',
            targetId: const IdUid(3, 2635321585101933522)),
        ModelRelation(
            id: const IdUid(7, 8099576207851513150),
            name: 'websites',
            targetId: const IdUid(3, 2635321585101933522))
      ],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(2, 4408454832837012543),
      name: 'NameModel',
      lastPropertyId: const IdUid(4, 2976031770471038917),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 6963866533142417058),
            name: 'id',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 9035979426049370614),
            name: 'name',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 2976031770471038917),
            name: 'internalId',
            type: 6,
            flags: 1)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[]),
  ModelEntity(
      id: const IdUid(3, 2635321585101933522),
      name: 'UrlModel',
      lastPropertyId: const IdUid(4, 6251629468545459906),
      flags: 0,
      properties: <ModelProperty>[
        ModelProperty(
            id: const IdUid(1, 3524173476791112095),
            name: 'id',
            type: 6,
            flags: 0),
        ModelProperty(
            id: const IdUid(3, 3552854197591498478),
            name: 'url',
            type: 9,
            flags: 0),
        ModelProperty(
            id: const IdUid(4, 6251629468545459906),
            name: 'internalId',
            type: 6,
            flags: 1)
      ],
      relations: <ModelRelation>[],
      backlinks: <ModelBacklink>[])
];

/// ObjectBox model definition, pass it to [Store] - Store(getObjectBoxModel())
ModelDefinition getObjectBoxModel() {
  final model = ModelInfo(
      entities: _entities,
      lastEntityId: const IdUid(3, 2635321585101933522),
      lastIndexId: const IdUid(2, 4431060515801804632),
      lastRelationId: const IdUid(7, 8099576207851513150),
      lastSequenceId: const IdUid(0, 0),
      retiredEntityUids: const [],
      retiredIndexUids: const [7870265297517588475, 4431060515801804632],
      retiredPropertyUids: const [
        1828583877959372957,
        3441612801910786614,
        3609632263623311114,
        289184620328267347,
        4006487307378013673,
        1816333859582944522,
        3874877058910681991,
        4914956181373803732,
        8508172515187046401,
        5794231984227220894,
        7203893688290415996,
        6942285238077573308
      ],
      retiredRelationUids: const [],
      modelVersion: 5,
      modelVersionParserMinimum: 5,
      version: 1);

  final bindings = <Type, EntityDefinition>{
    Game: EntityDefinition<Game>(
        model: _entities[0],
        toOneRelations: (Game object) => [],
        toManyRelations: (Game object) => {
              RelInfo<Game>.toMany(1, object.id!): object.gameModes,
              RelInfo<Game>.toMany(2, object.id!): object.genres,
              RelInfo<Game>.toMany(3, object.id!): object.keywords,
              RelInfo<Game>.toMany(4, object.id!): object.platforms,
              RelInfo<Game>.toMany(5, object.id!): object.themes,
              RelInfo<Game>.toMany(6, object.id!): object.screenshots,
              RelInfo<Game>.toMany(7, object.id!): object.websites
            },
        getId: (Game object) => object.id,
        setId: (Game object, int id) {
          object.id = id;
        },
        objectToFB: (Game object, fb.Builder fbb) {
          final nameOffset =
              object.name == null ? null : fbb.writeString(object.name!);
          final slugOffset =
              object.slug == null ? null : fbb.writeString(object.slug!);
          final summaryOffset =
              object.summary == null ? null : fbb.writeString(object.summary!);
          final urlOffset =
              object.url == null ? null : fbb.writeString(object.url!);
          final coverUrlOffset = object.coverUrl == null
              ? null
              : fbb.writeString(object.coverUrl!);
          fbb.startTable(22);
          fbb.addInt64(0, object.id ?? 0);
          fbb.addInt64(9, object.createdAt);
          fbb.addInt64(10, object.updatedAt);
          fbb.addInt64(11, object.firstReleaseDate);
          fbb.addOffset(12, nameOffset);
          fbb.addOffset(13, slugOffset);
          fbb.addOffset(14, summaryOffset);
          fbb.addOffset(15, urlOffset);
          fbb.addOffset(16, coverUrlOffset);
          fbb.addInt64(19, object.categoryIndex);
          fbb.addInt64(20, object.statusIndex);
          fbb.finish(fbb.endTable());
          return object.id ?? 0;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = Game(
              id: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              categoryIndex: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 42),
              statusIndex: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 44),
              createdAt: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 22),
              updatedAt: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 24),
              firstReleaseDate: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 26),
              name: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 28),
              slug: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 30),
              summary: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 32),
              url: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 34),
              coverUrl: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 36));
          InternalToManyAccess.setRelInfo(object.gameModes, store,
              RelInfo<Game>.toMany(1, object.id!), store.box<Game>());
          InternalToManyAccess.setRelInfo(object.genres, store,
              RelInfo<Game>.toMany(2, object.id!), store.box<Game>());
          InternalToManyAccess.setRelInfo(object.keywords, store,
              RelInfo<Game>.toMany(3, object.id!), store.box<Game>());
          InternalToManyAccess.setRelInfo(object.platforms, store,
              RelInfo<Game>.toMany(4, object.id!), store.box<Game>());
          InternalToManyAccess.setRelInfo(object.themes, store,
              RelInfo<Game>.toMany(5, object.id!), store.box<Game>());
          InternalToManyAccess.setRelInfo(object.screenshots, store,
              RelInfo<Game>.toMany(6, object.id!), store.box<Game>());
          InternalToManyAccess.setRelInfo(object.websites, store,
              RelInfo<Game>.toMany(7, object.id!), store.box<Game>());
          return object;
        }),
    NameModel: EntityDefinition<NameModel>(
        model: _entities[1],
        toOneRelations: (NameModel object) => [],
        toManyRelations: (NameModel object) => {},
        getId: (NameModel object) => object.internalId,
        setId: (NameModel object, int id) {
          object.internalId = id;
        },
        objectToFB: (NameModel object, fb.Builder fbb) {
          final nameOffset =
              object.name == null ? null : fbb.writeString(object.name!);
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addOffset(2, nameOffset);
          fbb.addInt64(3, object.internalId);
          fbb.finish(fbb.endTable());
          return object.internalId;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = NameModel(
              id: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              name: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8))
            ..internalId =
                const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0);

          return object;
        }),
    UrlModel: EntityDefinition<UrlModel>(
        model: _entities[2],
        toOneRelations: (UrlModel object) => [],
        toManyRelations: (UrlModel object) => {},
        getId: (UrlModel object) => object.internalId,
        setId: (UrlModel object, int id) {
          object.internalId = id;
        },
        objectToFB: (UrlModel object, fb.Builder fbb) {
          final urlOffset =
              object.url == null ? null : fbb.writeString(object.url!);
          fbb.startTable(5);
          fbb.addInt64(0, object.id);
          fbb.addOffset(2, urlOffset);
          fbb.addInt64(3, object.internalId);
          fbb.finish(fbb.endTable());
          return object.internalId;
        },
        objectFromFB: (Store store, ByteData fbData) {
          final buffer = fb.BufferContext(fbData);
          final rootOffset = buffer.derefObject(0);

          final object = UrlModel(
              id: const fb.Int64Reader()
                  .vTableGetNullable(buffer, rootOffset, 4),
              url: const fb.StringReader()
                  .vTableGetNullable(buffer, rootOffset, 8))
            ..internalId =
                const fb.Int64Reader().vTableGet(buffer, rootOffset, 10, 0);

          return object;
        })
  };

  return ModelDefinition(model, bindings);
}

/// [Game] entity fields to define ObjectBox queries.
class Game_ {
  /// see [Game.id]
  static final id = QueryIntegerProperty<Game>(_entities[0].properties[0]);

  /// see [Game.createdAt]
  static final createdAt =
      QueryIntegerProperty<Game>(_entities[0].properties[1]);

  /// see [Game.updatedAt]
  static final updatedAt =
      QueryIntegerProperty<Game>(_entities[0].properties[2]);

  /// see [Game.firstReleaseDate]
  static final firstReleaseDate =
      QueryIntegerProperty<Game>(_entities[0].properties[3]);

  /// see [Game.name]
  static final name = QueryStringProperty<Game>(_entities[0].properties[4]);

  /// see [Game.slug]
  static final slug = QueryStringProperty<Game>(_entities[0].properties[5]);

  /// see [Game.summary]
  static final summary = QueryStringProperty<Game>(_entities[0].properties[6]);

  /// see [Game.url]
  static final url = QueryStringProperty<Game>(_entities[0].properties[7]);

  /// see [Game.coverUrl]
  static final coverUrl = QueryStringProperty<Game>(_entities[0].properties[8]);

  /// see [Game.categoryIndex]
  static final categoryIndex =
      QueryIntegerProperty<Game>(_entities[0].properties[9]);

  /// see [Game.statusIndex]
  static final statusIndex =
      QueryIntegerProperty<Game>(_entities[0].properties[10]);

  /// see [Game.gameModes]
  static final gameModes =
      QueryRelationMany<Game, NameModel>(_entities[0].relations[0]);

  /// see [Game.genres]
  static final genres =
      QueryRelationMany<Game, NameModel>(_entities[0].relations[1]);

  /// see [Game.keywords]
  static final keywords =
      QueryRelationMany<Game, NameModel>(_entities[0].relations[2]);

  /// see [Game.platforms]
  static final platforms =
      QueryRelationMany<Game, NameModel>(_entities[0].relations[3]);

  /// see [Game.themes]
  static final themes =
      QueryRelationMany<Game, NameModel>(_entities[0].relations[4]);

  /// see [Game.screenshots]
  static final screenshots =
      QueryRelationMany<Game, UrlModel>(_entities[0].relations[5]);

  /// see [Game.websites]
  static final websites =
      QueryRelationMany<Game, UrlModel>(_entities[0].relations[6]);
}

/// [NameModel] entity fields to define ObjectBox queries.
class NameModel_ {
  /// see [NameModel.id]
  static final id = QueryIntegerProperty<NameModel>(_entities[1].properties[0]);

  /// see [NameModel.name]
  static final name =
      QueryStringProperty<NameModel>(_entities[1].properties[1]);

  /// see [NameModel.internalId]
  static final internalId =
      QueryIntegerProperty<NameModel>(_entities[1].properties[2]);
}

/// [UrlModel] entity fields to define ObjectBox queries.
class UrlModel_ {
  /// see [UrlModel.id]
  static final id = QueryIntegerProperty<UrlModel>(_entities[2].properties[0]);

  /// see [UrlModel.url]
  static final url = QueryStringProperty<UrlModel>(_entities[2].properties[1]);

  /// see [UrlModel.internalId]
  static final internalId =
      QueryIntegerProperty<UrlModel>(_entities[2].properties[2]);
}
