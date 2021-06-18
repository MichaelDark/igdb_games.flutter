import 'package:flutter/material.dart';
import 'package:igdb_games/data/igdb_repository.dart';
import 'package:igdb_games/locator.dart';
import 'package:igdb_games/models/game.dart';
import 'package:igdb_games/pages/game_info_page.dart';
import 'package:igdb_games/widgets/game_list_tile.dart';

class GameListPage extends StatefulWidget {
  @override
  _GameListPageState createState() => _GameListPageState();
}

class _GameListPageState extends State<GameListPage> {
  late Future<List<Game>> _gamesFuture;

  @override
  void initState() {
    super.initState();
    _load();
  }

  void _load() {
    _gamesFuture = locator<IgdbRepository>().getGames();
  }

  void _onRefresh() => setState(() => _load());

  void _onGameTap(Game game) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (_) => GameInfoPage(game: game),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'IGDB Explorer',
        ),
        actions: [
          _buildRefreshButton(),
        ],
      ),
      body: FutureBuilder<List<Game>>(
        future: _gamesFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data!;
            return ListView.builder(
              padding: const EdgeInsets.all(2.0),
              itemCount: data.length,
              itemBuilder: (context, index) {
                final game = data[index];
                return GameListTile(
                  game: game,
                  onTap: () => _onGameTap(game),
                );
              },
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }
          return Center(
            child: Text('Loading...'),
          );
        },
      ),
    );
  }

  Widget _buildRefreshButton() {
    return IconButton(
      icon: Icon(Icons.refresh),
      onPressed: _onRefresh,
    );
  }
}
