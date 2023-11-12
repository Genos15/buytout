// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home-ui.vm.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeUiState _$HomeUiStateFromJson(Map<String, dynamic> json) {
  return _HomeUiState.fromJson(json);
}

/// @nodoc
mixin _$HomeUiState {
  List<Category> get specialCategories => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeUiStateCopyWith<HomeUiState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUiStateCopyWith<$Res> {
  factory $HomeUiStateCopyWith(
          HomeUiState value, $Res Function(HomeUiState) then) =
      _$HomeUiStateCopyWithImpl<$Res, HomeUiState>;
  @useResult
  $Res call({List<Category> specialCategories, List<Category> categories});
}

/// @nodoc
class _$HomeUiStateCopyWithImpl<$Res, $Val extends HomeUiState>
    implements $HomeUiStateCopyWith<$Res> {
  _$HomeUiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specialCategories = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      specialCategories: null == specialCategories
          ? _value.specialCategories
          : specialCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeUiStateImplCopyWith<$Res>
    implements $HomeUiStateCopyWith<$Res> {
  factory _$$HomeUiStateImplCopyWith(
          _$HomeUiStateImpl value, $Res Function(_$HomeUiStateImpl) then) =
      __$$HomeUiStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Category> specialCategories, List<Category> categories});
}

/// @nodoc
class __$$HomeUiStateImplCopyWithImpl<$Res>
    extends _$HomeUiStateCopyWithImpl<$Res, _$HomeUiStateImpl>
    implements _$$HomeUiStateImplCopyWith<$Res> {
  __$$HomeUiStateImplCopyWithImpl(
      _$HomeUiStateImpl _value, $Res Function(_$HomeUiStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specialCategories = null,
    Object? categories = null,
  }) {
    return _then(_$HomeUiStateImpl(
      specialCategories: null == specialCategories
          ? _value._specialCategories
          : specialCategories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeUiStateImpl extends _HomeUiState {
  const _$HomeUiStateImpl(
      {required final List<Category> specialCategories,
      required final List<Category> categories})
      : _specialCategories = specialCategories,
        _categories = categories,
        super._();

  factory _$HomeUiStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeUiStateImplFromJson(json);

  final List<Category> _specialCategories;
  @override
  List<Category> get specialCategories {
    if (_specialCategories is EqualUnmodifiableListView)
      return _specialCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specialCategories);
  }

  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'HomeUiState(specialCategories: $specialCategories, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeUiStateImpl &&
            const DeepCollectionEquality()
                .equals(other._specialCategories, _specialCategories) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_specialCategories),
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeUiStateImplCopyWith<_$HomeUiStateImpl> get copyWith =>
      __$$HomeUiStateImplCopyWithImpl<_$HomeUiStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeUiStateImplToJson(
      this,
    );
  }
}

abstract class _HomeUiState extends HomeUiState {
  const factory _HomeUiState(
      {required final List<Category> specialCategories,
      required final List<Category> categories}) = _$HomeUiStateImpl;
  const _HomeUiState._() : super._();

  factory _HomeUiState.fromJson(Map<String, dynamic> json) =
      _$HomeUiStateImpl.fromJson;

  @override
  List<Category> get specialCategories;
  @override
  List<Category> get categories;
  @override
  @JsonKey(ignore: true)
  _$$HomeUiStateImplCopyWith<_$HomeUiStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
