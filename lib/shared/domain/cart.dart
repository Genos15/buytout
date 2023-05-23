import 'package:buytout/shared/index.dart';

part 'cart.g.dart';

@HiveType(typeId: 1)
class Cart extends HiveObject {
  @HiveField(0)
  late String id;

  @HiveField(1)
  late Map<int, Product> products;
}