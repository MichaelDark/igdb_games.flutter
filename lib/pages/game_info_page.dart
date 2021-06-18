import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:igdb_games/models/game.dart';
import 'package:igdb_games/utils/convert_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class GameInfoPage extends StatelessWidget {
  static const _defaultImagePlaceholderUrl =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqVvzVYtu9kLyHdRVqXsK1xqjG6Xk75zMxt0xmnMHqUYFSrZx3Njt6DoiFjvIM5A6--Ow&usqp=CAU';

  final Game game;

  const GameInfoPage({
    Key? key,
    required this.game,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(game.name ?? 'Noname game'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          _buildImages(context),
          _buildName(),
          if (game.slug != null) _buildSlug(game.slug!),
          _buildTagList('Category', [enumToString(game.category)]),
          _buildTagList('Status', [enumToString(game.status)]),
          _buildTagList('Released', [dateTimeToString(game.firstReleaseDate)]),
          _buildTitledText('Summary', game.summary),
          _buildTagList('Game modes', game.gameModes),
          _buildTagList('Genres', game.genres),
          _buildTagList('Keywords', game.keywords),
          _buildTagList('Platforms', game.platforms),
          _buildTagList('Themes', game.themes),
          _buildLinkTagList(
            'Links',
            [game.url, ...(game.websites ?? <String>[])],
          ),
        ],
      ),
    );
  }

  Widget _buildImages(BuildContext context) {
    final List<String> imageUrls = [
      game.cover,
      ...(game.screenshots ?? <String>[]),
    ].whereNotNull().toList();
    if (imageUrls.isEmpty) imageUrls.add(_defaultImagePlaceholderUrl);
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width * (imageUrls.length == 1 ? 1 : 0.85);

    return Row(
      children: [
        Expanded(
          child: Container(
            height: 256,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...imageUrls.mapIndexed((int index, String imageUrl) {
                  final widget = CachedNetworkImage(
                    imageUrl: imageUrl,
                    width: width,
                    height: 256,
                    fit: BoxFit.cover,
                  );
                  return index == 0
                      ? Hero(tag: 'GameImage_${game.id}', child: widget)
                      : widget;
                })
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildName() {
    return Padding(
      padding: const EdgeInsets.all(8.0).subtract(
        EdgeInsets.only(bottom: 8),
      ),
      child: Text(
        game.name ?? 'Noname game',
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  Widget _buildSlug(String slug) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16)
          .add(EdgeInsets.only(bottom: 8)),
      child: Text(
        slug,
        textAlign: TextAlign.start,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget _buildTagList(String title, List<String?>? texts) {
    if (texts == null || texts.whereNotNull().isEmpty) return Container();
    return _buildTitledContainer(
      title,
      Wrap(
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          ...texts.whereNotNull().map(_buildTag).whereNotNull(),
        ],
      ),
    );
  }

  Widget _buildLinkTagList(String title, List<String?>? texts) {
    if (texts == null || texts.whereNotNull().isEmpty) return Container();
    return _buildTitledContainer(
      title,
      Wrap(
        alignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          ...texts
              .whereNotNull()
              .map((link) => GestureDetector(
                    onTap: () async {
                      if (await canLaunch(link)) launch(link);
                    },
                    child: _buildTag(link),
                  ))
              .whereNotNull(),
        ],
      ),
    );
  }

  Widget _buildTitledText(String title, String? text) {
    if (text == null || text.isEmpty) return Container();
    return _buildTitledContainer(
      title,
      Text(
        text,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 14,
        ),
      ),
    );
  }

  Widget _buildTitledContainer(String title, Widget child) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          child: child,
        )
      ],
    );
  }

  Widget? _buildTag(String? text) {
    if (text == null || text.isEmpty) return null;
    return Container(
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.amber[600],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
        ),
      ),
    );
  }
}
