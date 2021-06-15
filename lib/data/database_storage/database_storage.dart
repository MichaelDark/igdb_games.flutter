import 'package:objectdb/objectdb.dart';

import 'file_database_storage.dart'
    if (dart.library.js) 'indexeddb_database_storage.dart';

abstract class StorageProvider {
  static StorageProvider instance = StorageProviderImpl();
  Future<StorageInterface> getStorage();
}
