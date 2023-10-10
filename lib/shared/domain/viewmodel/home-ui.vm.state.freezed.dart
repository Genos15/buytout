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
  Category get primary => throw _privateConstructorUsedError;
  Category get secondary => throw _privateConstructorUsedError;
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
  $Res call({Category primary, Category secondary, List<Category> categories});

  $CategoryCopyWith<$Res> get primary;
  $CategoryCopyWith<$Res> get secondary;
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
    Object? primary = null,
    Object? secondary = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as Category,
      secondary: null == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as Category,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get primary {
    return $CategoryCopyWith<$Res>(_value.primary, (value) {
      return _then(_value.copyWith(primary: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get secondary {
    return $CategoryCopyWith<$Res>(_value.secondary, (value) {
      return _then(_value.copyWith(secondary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HomeUiStateCopyWith<$Res>
    implements $HomeUiStateCopyWith<$Res> {
  factory _$$_HomeUiStateCopyWith(
          _$_HomeUiState value, $Res Function(_$_HomeUiState) then) =
      __$$_HomeUiStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Category primary, Category secondary, List<Category> categories});

  @override
  $CategoryCopyWith<$Res> get primary;
  @override
  $CategoryCopyWith<$Res> get secondary;
}

/// @nodoc
class __$$_HomeUiStateCopyWithImpl<$Res>
    extends _$HomeUiStateCopyWithImpl<$Res, _$_HomeUiState>
    implements _$$_HomeUiStateCopyWith<$Res> {
  __$$_HomeUiStateCopyWithImpl(
      _$_HomeUiState _value, $Res Function(_$_HomeUiState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? primary = null,
    Object? secondary = null,
    Object? categories = null,
  }) {
    return _then(_$_HomeUiState(
      primary: null == primary
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as Category,
      secondary: null == secondary
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as Category,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeUiState extends _HomeUiState {
  const _$_HomeUiState(
      {required this.primary,
      required this.secondary,
      required final List<Category> categories})
      : _categories = categories,
        super._();

  factory _$_HomeUiState.fromJson(Map<String, dynamic> json) =>
      _$$_HomeUiStateFromJson(json);

  @override
  final Category primary;
  @override
  final Category secondary;
  final List<Category> _categories;
  @override
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'HomeUiState(primary: $primary, secondary: $secondary, categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeUiState &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.secondary, secondary) ||
                other.secondary == secondary) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, primary, secondary,
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeUiStateCopyWith<_$_HomeUiState> get copyWith =>
      __$$_HomeUiStateCopyWithImpl<_$_HomeUiState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeUiStateToJson(
      this,
    );
  }
}

abstract class _HomeUiState extends HomeUiState {
  const factory _HomeUiState(
      {required final Category primary,
      required final Category secondary,
      required final List<Category> categories}) = _$_HomeUiState;
  const _HomeUiState._() : super._();

  factory _HomeUiState.fromJson(Map<String, dynamic> json) =
      _$_HomeUiState.fromJson;

  @override
  Category get primary;
  @override
  Category get secondary;
  @override
  List<Category> get categories;
  @override
  @JsonKey(ignore: true)
  _$$_HomeUiStateCopyWith<_$_HomeUiState> get copyWith =>
      throw _privateConstructorUsedError;
}
