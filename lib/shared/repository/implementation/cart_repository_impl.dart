import 'package:buytout/shared/domain/product_cart_item.dart';
import 'package:buytout/shared/index.dart';

final cartRepositoryProvider = Provider.autoDispose<CartRepository>((ref) {
  final db = ref.watch(databaseProvider);
  return CartRepositoryImpl(db);
});

class CartRepositoryImpl implements CartRepository {
  final DatabaseClient client;

  CartRepositoryImpl(this.client) {
    // init(database: client.database);
  }

  @override
  Future<bool> clear() {
    // TODO: implement clear
    throw UnimplementedError();
  }

  @override
  Future<Cart> find() {
    // TODO: implement find
    throw UnimplementedError();
  }

  @override
  Future<Cart> update({required Cart cart}) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<Iterable<ProductCartItem>> findAll() async {
    final database = client.database;
    if (database == null) {
      // throw DatabaseNotReadyException();
      return [];
    }
    final cartMap = await database.query('cart_products', orderBy: "id");
    final cartProducts = cartMap.map((e) {
      return Map<String, Object>.from(e)
        ..putIfAbsent('runtimeType', () => 'output');
    }).map(ProductCartItem.fromJson);

    return cartProducts;
  }

  @override
  Future<int> insert({required ProductCartItem productCartItem}) async {
    final database = client.database;
    if (database == null) {
      throw DatabaseNotReadyException();
    }
    return await database.insert(
      'cart_products',
      productCartItem.toJson()..remove('runtimeType'),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
