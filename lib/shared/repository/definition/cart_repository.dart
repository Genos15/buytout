import 'package:buytout/shared/index.dart';

abstract interface class CartRepository {
  Future<Result<Cart>> find();

  Future<Result<Cart>> save({required Cart cart});

  Future<Result<bool>> clear();
}
