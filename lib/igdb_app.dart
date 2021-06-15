import 'package:flutter/material.dart';

import 'pages/game_list_page.dart';

class IgdbApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IGDB Explorer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GameListPage(),
    );
  }
}
