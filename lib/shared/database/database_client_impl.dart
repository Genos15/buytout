import 'package:buytout/shared/index.dart';
import 'package:path/path.dart';

const kDatabaseName = 'readige_database.db';
const kDatabaseVersion = 1;
const kProductTableName = 'products';

final _providerDatabaseSetup = FutureProvider<Database>((ref) async {
  final path = join(await getDatabasesPath(), kDatabaseName);
  return await openDatabase(path, onCreate: (db, version) {
    DatabaseClientImpl.setup(database: db);
  }, version: kDatabaseVersion, singleInstance: true, readOnly: false);
});

final databaseProvider = Provider.autoDispose<DatabaseClient>((ref) {
  final databaseState = ref.watch(_providerDatabaseSetup);
  return databaseState.when(
    data: (db) {
      return DatabaseClientImpl(db);
    },
    error: (e, s) {
      return DatabaseClientImpl(null);
    },
    loading: () {
      return DatabaseClientImpl(null);
    },
  );
});

class DatabaseClientImpl implements DatabaseClient {
  DatabaseClientImpl(this._instance);

  final Database? _instance;

  @override
  Database? get database => _instance;

  static void setup({required Database database}) async {
    _createProductPreviewTable(database);
    _createCartItemsTable(database);
  }

  static void _createProductPreviewTable(Database db) async {
    await db.execute(
      '''
          CREATE TABLE IF NOT EXISTS products (
            id STRING PRIMARY KEY,
            name TEXT NOT NULL,
            displayPrice INTEGER NOT NULL,
            displayPriceAsString TEXT NOT NULL,
            price INTEGER NOT NULL,
            priceAsString TEXT NOT NULL,
            currency TEXT NOT NULL,
            image1 TEXT NOT NULL,
            image2 TEXT DEFAULT NULL,
            image3 TEXT DEFAULT NULL,
            image4 TEXT DEFAULT NULL,
            image5 TEXT DEFAULT NULL,
            description TEXT DEFAULT NULL,
            nameHighlight TEXT DEFAULT NULL,
            descriptionHighlight TEXT DEFAULT NULL,
            queryScore REAL DEFAULT NULL,
            percentage INTEGER NOT NULL,
            inStock INTEGER NOT NULL,
            favorite INTEGER NOT NULL DEFAULT 0,
            createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
            editedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
          )
          ''',
    );
  }

  static void _createCartItemsTable(Database db) async {
    await db.execute(
      '''
          CREATE TABLE IF NOT EXISTS cart_products (
            id STRING PRIMARY KEY,
            productId STRING,
            quantity INTEGER NOT NULL,
            createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
            editedAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
            FOREIGN KEY (productId) REFERENCES product_previews (id) 
              ON DELETE NO ACTION ON UPDATE NO ACTION
          )
          ''',
    );
  }
}
