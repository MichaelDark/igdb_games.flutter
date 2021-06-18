abstract class IgdbDataSource<T> {
  Future<List<T>> getGames();
}

abstract class IgdbLocalDataSource<T> extends IgdbDataSource<T> {
  Future<void> saveGames(List<T> games);
}
