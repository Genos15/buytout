class CartNotFoundException implements Exception {
  String get message => 'impossible to find the cart instance';
}
