import 'package:igdb_games/data/database_storage/database_storage.dart';
import 'package:objectdb/objectdb.dart';
// ignore: implementation_imports
import 'package:objectdb/src/objectdb_storage_filesystem.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

class StorageProviderImpl implements StorageProvider {
  Future<StorageInterface> getStorage() async {
    final appDir = await getApplicationDocumentsDirectory();
    final dbPath = path.join(appDir.path, 'igdb.db');
    return FileSystemStorage(dbPath);
  }
}
