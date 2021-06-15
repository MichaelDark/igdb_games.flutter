import 'package:objectdb/objectdb.dart';
// ignore: implementation_imports
import 'package:objectdb/src/objectdb_storage_indexeddb.dart';

import 'database_storage.dart';

class StorageProviderImpl implements StorageProvider {
  Future<StorageInterface> getStorage() async {
    return IndexedDBStorage('igdb_local');
  }
}
