import 'package:flutter/material.dart';
import 'package:igdb_games/data/igdb_repository.dart';
import 'package:igdb_games/data/models/game.dart';
import 'package:igdb_games/di.dart';
import 'package:igdb_games/widgets/game_list_tile.dart';

class GameListPage extends StatefulWidget {
  @override
  _GameListPageState createState() => _GameListPageState();
}

class _GameListPageState extends State<GameListPage> {
  bool _online = true;
  late Future<List<Game>> _gamesFuture;

  @override
  void initState() {
    super.initState();
    _load();
  }

  void _load() {
    _gamesFuture = locator<IgdbRepository>().getGames(
      _online ? IgdbRepositorySource.online : IgdbRepositorySource.offline,
    );
  }

  void _onRefresh() => setState(() => _load());

  void _onChangeMode() => setState(() => _online = !_online);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IGDB Explorer ${_online ? '(online)' : '(offline)'}',
        ),
        actions: [
          _buildRefreshButton(),
          _buildModeButton(),
        ],
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

  Widget _buildModeButton() {
    return IconButton(
      icon: Icon(_online ? Icons.wifi : Icons.download_for_offline_sharp),
      onPressed: _onChangeMode,
    );
  }

  Widget _buildRefreshButton() {
    return IconButton(
      icon: Icon(Icons.refresh),
      onPressed: _onRefresh,
    );
  }
}
