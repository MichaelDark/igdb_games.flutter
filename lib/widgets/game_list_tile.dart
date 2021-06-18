import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:igdb_games/models/game.dart';

class GameListTile extends StatelessWidget {
  static const _avatarRadius = 36.0;
  static const _defaultImagePlaceholderUrl =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqVvzVYtu9kLyHdRVqXsK1xqjG6Xk75zMxt0xmnMHqUYFSrZx3Njt6DoiFjvIM5A6--Ow&usqp=CAU';

  final Game game;
  final VoidCallback? onTap;

  const GameListTile({
    Key? key,
    required this.game,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue[50]!,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildImage(),
              Expanded(
                child: _buildInfo(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: _avatarRadius,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(_avatarRadius),
          child: Hero(
            tag: 'GameImage_${game.id}',
            child: CachedNetworkImage(
              imageUrl: game.cover ??
                  game.screenshots?.firstOrNull ??
                  _defaultImagePlaceholderUrl,
              height: 256,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfo() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            game.name ?? 'Noname game',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          if (game.summary?.isNotEmpty == true)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                game.summary!,
                textAlign: TextAlign.start,
              ),
            ),
        ],
      ),
    );
  }
}
