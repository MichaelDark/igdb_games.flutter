import 'package:flutter/material.dart';
import 'package:igdb_games/api/models/game.dart';
import 'package:igdb_games/data/data_source/igdb_data_source.dart';
import 'package:igdb_games/di.dart';
import 'package:igdb_games/widgets/game_list_tile.dart';

class GameListPage extends StatefulWidget {
  @override
  _GameListPageState createState() => _GameListPageState();
}

class _GameListPageState extends State<GameListPage> {
  final _repository = locator<IgdbDataSource>(instanceName: 'repository');
  late Future<List<Game>> _gamesFuture;

  @override
  void initState() {
    super.initState();
    _gamesFuture = _repository.getGames();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IGDB Explorer'),
      ),
      body: FutureBuilder<List<Game>>(
        future: _gamesFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final game = data[index];
                return GameListTile(game: game);
              },
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }
          return Center(
            child: Text('Loading'),
          );
        },
      ),
    );
  }
}
