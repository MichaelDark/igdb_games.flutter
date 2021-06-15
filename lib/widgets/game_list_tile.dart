import 'package:flutter/material.dart';
import 'package:igdb_games/api/models/game.dart';
import 'package:igdb_games/utils/convert_utils.dart';

class GameListTile extends StatelessWidget {
  final Game game;

  const GameListTile({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${game.id}'),
          if (game.category != null) Text('Category: ${game.category}'),
          if (game.status != null) Text('Status: ${game.status}'),
          // if (game.createdAt != null)
          //   _buildTimestamp('Created At', game.createdAt),
          // if (game.updatedAt != null)
          //   _buildTimestamp('Updated At', game.updatedAt),
          // if (game.firstReleaseDate != null)
          //   _buildTimestamp('First Released', game.firstReleaseDate),
          if (game.name != null) Text('Name: ${game.name}'),
          // if (game.slug != null) Text('Slug: ${game.slug}'),
          // if (game.summary != null) Text('Summary: ${game.summary}'),
          // if (game.gameModes != null) Text('Modes: ${game.gameModes}'),
          // if (game.genres != null) Text('Genres: ${game.genres}'),
          // if (game.keywords != null) Text('Keywords: ${game.keywords}'),
          // if (game.platforms != null) Text('Platforms: ${game.platforms}'),
          // if (game.themes != null) Text('Themes: ${game.themes}'),
          // if (game.screenshots != null)
          //   Text('Screenshots: ${game.screenshots}'),
          // if (game.websites != null) Text('Websites: ${game.websites}'),
        ],
      ),
    );
  }

  Widget _buildTimestamp(String name, int? timestamp) {
    if (timestamp == null) return Container();
    return Text('$name: ${parseEpochTimestamp(timestamp)}');
  }
}
