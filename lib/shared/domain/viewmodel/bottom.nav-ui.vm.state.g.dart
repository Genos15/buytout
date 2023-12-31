// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom.nav-ui.vm.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BottomNavUiStateImpl _$$BottomNavUiStateImplFromJson(
        Map<String, dynamic> json) =>
    _$BottomNavUiStateImpl(
      current: $enumDecode(_$BottomNavStateEnumMap, json['current']),
    );

Map<String, dynamic> _$$BottomNavUiStateImplToJson(
        _$BottomNavUiStateImpl instance) =>
    <String, dynamic>{
      'current': _$BottomNavStateEnumMap[instance.current]!,
    };

const _$BottomNavStateEnumMap = {
  BottomNavState.home: 'home',
  BottomNavState.cart: 'cart',
  BottomNavState.favorite: 'favorite',
  BottomNavState.account: 'account',
  BottomNavState.product: 'product',
  BottomNavState.login: 'login',
  BottomNavState.category: 'category',
  BottomNavState.defaultUi: 'defaultUi',
};
