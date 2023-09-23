const kHomeBottomIndex = 0;
const kCartBottomIndex = 1;
const kFavoriteBottomIndex = 2;
const kAccountBottomIndex = 3;
const kCategoryBottomIndex = -1;
const kProductBottomIndex = -1;
const kLoginBottomIndex = -1;
const kOrderSummaryBottomIndex = -1;

enum BottomNavState {
  home(kHomeBottomIndex),
  cart(kCartBottomIndex),
  favorite(kFavoriteBottomIndex),
  account(kAccountBottomIndex),
  product(kProductBottomIndex),
  login(kLoginBottomIndex),
  orderSummary(kOrderSummaryBottomIndex),
  category(kCategoryBottomIndex);

  final int id;

  const BottomNavState(this.id);

  factory BottomNavState.fromId(int id) {
    return values.firstWhere((e) => e.id == id);
  }
}
