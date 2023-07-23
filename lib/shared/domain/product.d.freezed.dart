// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.d.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'input':
      return ProductInput.fromJson(json);
    case 'output':
      return ProductOutput.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Product',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Product {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get displayPrice => throw _privateConstructorUsedError;
  String get displayPriceAsString => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get priceAsString => throw _privateConstructorUsedError;
  String get currency => throw _privateConstructorUsedError;
  String get image1 => throw _privateConstructorUsedError;
  int get percentage => throw _privateConstructorUsedError;
  int get inStock => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String name,
            int displayPrice,
            String displayPriceAsString,
            int price,
            String priceAsString,
            String currency,
            String image1,
            int percentage,
            int isFavorite,
            int inStock)
        input,
    required TResult Function(
            String id,
            String name,
            int displayPrice,
            String displayPriceAsString,
            int price,
            String priceAsString,
            String description,
            String currency,
            String image1,
            String? image2,
            String? image3,
            String? image4,
            String? image5,
            int percentage,
            int favorite,
            int inStock,
            String? nameHighlight,
            String? descriptionHighlight,
            double? queryScore)
        output,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String name,
            int displayPrice,
            String displayPriceAsString,
            int price,
            String priceAsString,
            String currency,
            String image1,
            int percentage,
            int isFavorite,
            int inStock)?
        input,
    TResult? Function(
            String id,
            String name,
            int displayPrice,
            String displayPriceAsString,
            int price,
            String priceAsString,
            String description,
            String currency,
            String image1,
            String? image2,
            String? image3,
            String? image4,
            String? image5,
            int percentage,
            int favorite,
            int inStock,
            String? nameHighlight,
            String? descriptionHighlight,
            double? queryScore)?
        output,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String name,
            int displayPrice,
            String displayPriceAsString,
            int price,
            String priceAsString,
            String currency,
            String image1,
            int percentage,
            int isFavorite,
            int inStock)?
        input,
    TResult Function(
            String id,
            String name,
            int displayPrice,
            String displayPriceAsString,
            int price,
            String priceAsString,
            String description,
            String currency,
            String image1,
            String? image2,
            String? image3,
            String? image4,
            String? image5,
            int percentage,
            int favorite,
            int inStock,
            String? nameHighlight,
            String? descriptionHighlight,
            double? queryScore)?
        output,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductInput value) input,
    required TResult Function(ProductOutput value) output,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInput value)? input,
    TResult? Function(ProductOutput value)? output,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInput value)? input,
    TResult Function(ProductOutput value)? output,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String id,
      String name,
      int displayPrice,
      String displayPriceAsString,
      int price,
      String priceAsString,
      String currency,
      String image1,
      int percentage,
      int inStock});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? displayPrice = null,
    Object? displayPriceAsString = null,
    Object? price = null,
    Object? priceAsString = null,
    Object? currency = null,
    Object? image1 = null,
    Object? percentage = null,
    Object? inStock = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayPrice: null == displayPrice
          ? _value.displayPrice
          : displayPrice // ignore: cast_nullable_to_non_nullable
              as int,
      displayPriceAsString: null == displayPriceAsString
          ? _value.displayPriceAsString
          : displayPriceAsString // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceAsString: null == priceAsString
          ? _value.priceAsString
          : priceAsString // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      image1: null == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductInputCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductInputCopyWith(
          _$ProductInput value, $Res Function(_$ProductInput) then) =
      __$$ProductInputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int displayPrice,
      String displayPriceAsString,
      int price,
      String priceAsString,
      String currency,
      String image1,
      int percentage,
      int isFavorite,
      int inStock});
}

/// @nodoc
class __$$ProductInputCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductInput>
    implements _$$ProductInputCopyWith<$Res> {
  __$$ProductInputCopyWithImpl(
      _$ProductInput _value, $Res Function(_$ProductInput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? displayPrice = null,
    Object? displayPriceAsString = null,
    Object? price = null,
    Object? priceAsString = null,
    Object? currency = null,
    Object? image1 = null,
    Object? percentage = null,
    Object? isFavorite = null,
    Object? inStock = null,
  }) {
    return _then(_$ProductInput(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayPrice: null == displayPrice
          ? _value.displayPrice
          : displayPrice // ignore: cast_nullable_to_non_nullable
              as int,
      displayPriceAsString: null == displayPriceAsString
          ? _value.displayPriceAsString
          : displayPriceAsString // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceAsString: null == priceAsString
          ? _value.priceAsString
          : priceAsString // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      image1: null == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as int,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductInput extends ProductInput {
  const _$ProductInput(
      {required this.id,
      required this.name,
      required this.displayPrice,
      required this.displayPriceAsString,
      required this.price,
      required this.priceAsString,
      required this.currency,
      required this.image1,
      this.percentage = 0,
      this.isFavorite = 0,
      this.inStock = mockedInStock,
      final String? $type})
      : $type = $type ?? 'input',
        super._();

  factory _$ProductInput.fromJson(Map<String, dynamic> json) =>
      _$$ProductInputFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int displayPrice;
  @override
  final String displayPriceAsString;
  @override
  final int price;
  @override
  final String priceAsString;
  @override
  final String currency;
  @override
  final String image1;
  @override
  @JsonKey()
  final int percentage;
  @override
  @JsonKey()
  final int isFavorite;
  @override
  @JsonKey()
  final int inStock;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Product.input(id: $id, name: $name, displayPrice: $displayPrice, displayPriceAsString: $displayPriceAsString, price: $price, priceAsString: $priceAsString, currency: $currency, image1: $image1, percentage: $percentage, isFavorite: $isFavorite, inStock: $inStock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductInput &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayPrice, displayPrice) ||
                other.displayPrice == displayPrice) &&
            (identical(other.displayPriceAsString, displayPriceAsString) ||
                other.displayPriceAsString == displayPriceAsString) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceAsString, priceAsString) ||
                other.priceAsString == priceAsString) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.image1, image1) || other.image1 == image1) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.inStock, inStock) || other.inStock == inStock));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      displayPrice,
      displayPriceAsString,
      price,
      priceAsString,
      currency,
      image1,
      percentage,
      isFavorite,
      inStock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductInputCopyWith<_$ProductInput> get copyWith =>
      __$$ProductInputCopyWithImpl<_$ProductInput>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String name,
            int displayPrice,
            String displayPriceAsString,
            int price,
            String priceAsString,
            String currency,
            String image1,
            int percentage,
            int isFavorite,
            int inStock)
        input,
    required TResult Function(
            String id,
            String name,
            int displayPrice,
            String displayPriceAsString,
            int price,
            String priceAsString,
            String description,
            String currency,
            String image1,
            String? image2,
            String? image3,
            String? image4,
            String? image5,
            int percentage,
            int favorite,
            int inStock,
            String? nameHighlight,
            String? descriptionHighlight,
            double? queryScore)
        output,
  }) {
    return input(id, name, displayPrice, displayPriceAsString, price,
        priceAsString, currency, image1, percentage, isFavorite, inStock);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String name,
            int displayPrice,
            String displayPriceAsString,
            int price,
            String priceAsString,
            String currency,
            String image1,
            int percentage,
            int isFavorite,
            int inStock)?
        input,
    TResult? Function(
            String id,
            String name,
            int displayPrice,
            String displayPriceAsString,
            int price,
            String priceAsString,
            String description,
            String currency,
            String image1,
            String? image2,
            String? image3,
            String? image4,
            String? image5,
            int percentage,
            int favorite,
            int inStock,
            String? nameHighlight,
            String? descriptionHighlight,
            double? queryScore)?
        output,
  }) {
    return input?.call(id, name, displayPrice, displayPriceAsString, price,
        priceAsString, currency, image1, percentage, isFavorite, inStock);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String name,
            int displayPrice,
            String displayPriceAsString,
            int price,
            String priceAsString,
            String currency,
            String image1,
            int percentage,
            int isFavorite,
            int inStock)?
        input,
    TResult Function(
            String id,
            String name,
            int displayPrice,
            String displayPriceAsString,
            int price,
            String priceAsString,
            String description,
            String currency,
            String image1,
            String? image2,
            String? image3,
            String? image4,
            String? image5,
            int percentage,
            int favorite,
            int inStock,
            String? nameHighlight,
            String? descriptionHighlight,
            double? queryScore)?
        output,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input(id, name, displayPrice, displayPriceAsString, price,
          priceAsString, currency, image1, percentage, isFavorite, inStock);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductInput value) input,
    required TResult Function(ProductOutput value) output,
  }) {
    return input(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInput value)? input,
    TResult? Function(ProductOutput value)? output,
  }) {
    return input?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInput value)? input,
    TResult Function(ProductOutput value)? output,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductInputToJson(
      this,
    );
  }
}

abstract class ProductInput extends Product {
  const factory ProductInput(
      {required final String id,
      required final String name,
      required final int displayPrice,
      required final String displayPriceAsString,
      required final int price,
      required final String priceAsString,
      required final String currency,
      required final String image1,
      final int percentage,
      final int isFavorite,
      final int inStock}) = _$ProductInput;
  const ProductInput._() : super._();

  factory ProductInput.fromJson(Map<String, dynamic> json) =
      _$ProductInput.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get displayPrice;
  @override
  String get displayPriceAsString;
  @override
  int get price;
  @override
  String get priceAsString;
  @override
  String get currency;
  @override
  String get image1;
  @override
  int get percentage;
  int get isFavorite;
  @override
  int get inStock;
  @override
  @JsonKey(ignore: true)
  _$$ProductInputCopyWith<_$ProductInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductOutputCopyWith<$Res>
    implements $ProductCopyWith<$Res> {
  factory _$$ProductOutputCopyWith(
          _$ProductOutput value, $Res Function(_$ProductOutput) then) =
      __$$ProductOutputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      int displayPrice,
      String displayPriceAsString,
      int price,
      String priceAsString,
      String description,
      String currency,
      String image1,
      String? image2,
      String? image3,
      String? image4,
      String? image5,
      int percentage,
      int favorite,
      int inStock,
      String? nameHighlight,
      String? descriptionHighlight,
      double? queryScore});
}

/// @nodoc
class __$$ProductOutputCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductOutput>
    implements _$$ProductOutputCopyWith<$Res> {
  __$$ProductOutputCopyWithImpl(
      _$ProductOutput _value, $Res Function(_$ProductOutput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? displayPrice = null,
    Object? displayPriceAsString = null,
    Object? price = null,
    Object? priceAsString = null,
    Object? description = null,
    Object? currency = null,
    Object? image1 = null,
    Object? image2 = freezed,
    Object? image3 = freezed,
    Object? image4 = freezed,
    Object? image5 = freezed,
    Object? percentage = null,
    Object? favorite = null,
    Object? inStock = null,
    Object? nameHighlight = freezed,
    Object? descriptionHighlight = freezed,
    Object? queryScore = freezed,
  }) {
    return _then(_$ProductOutput(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      displayPrice: null == displayPrice
          ? _value.displayPrice
          : displayPrice // ignore: cast_nullable_to_non_nullable
              as int,
      displayPriceAsString: null == displayPriceAsString
          ? _value.displayPriceAsString
          : displayPriceAsString // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      priceAsString: null == priceAsString
          ? _value.priceAsString
          : priceAsString // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String,
      image1: null == image1
          ? _value.image1
          : image1 // ignore: cast_nullable_to_non_nullable
              as String,
      image2: freezed == image2
          ? _value.image2
          : image2 // ignore: cast_nullable_to_non_nullable
              as String?,
      image3: freezed == image3
          ? _value.image3
          : image3 // ignore: cast_nullable_to_non_nullable
              as String?,
      image4: freezed == image4
          ? _value.image4
          : image4 // ignore: cast_nullable_to_non_nullable
              as String?,
      image5: freezed == image5
          ? _value.image5
          : image5 // ignore: cast_nullable_to_non_nullable
              as String?,
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
      favorite: null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as int,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as int,
      nameHighlight: freezed == nameHighlight
          ? _value.nameHighlight
          : nameHighlight // ignore: cast_nullable_to_non_nullable
              as String?,
      descriptionHighlight: freezed == descriptionHighlight
          ? _value.descriptionHighlight
          : descriptionHighlight // ignore: cast_nullable_to_non_nullable
              as String?,
      queryScore: freezed == queryScore
          ? _value.queryScore
          : queryScore // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductOutput extends ProductOutput {
  const _$ProductOutput(
      {required this.id,
      required this.name,
      required this.displayPrice,
      required this.displayPriceAsString,
      required this.price,
      required this.priceAsString,
      required this.description,
      required this.currency,
      required this.image1,
      this.image2,
      this.image3,
      this.image4,
      this.image5,
      this.percentage = 0,
      this.favorite = 0,
      this.inStock = mockedInStock,
      this.nameHighlight,
      this.descriptionHighlight,
      this.queryScore,
      final String? $type})
      : $type = $type ?? 'output',
        super._();

  factory _$ProductOutput.fromJson(Map<String, dynamic> json) =>
      _$$ProductOutputFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int displayPrice;
  @override
  final String displayPriceAsString;
  @override
  final int price;
  @override
  final String priceAsString;
  @override
  final String description;
  @override
  final String currency;
  @override
  final String image1;
  @override
  final String? image2;
  @override
  final String? image3;
  @override
  final String? image4;
  @override
  final String? image5;
  @override
  @JsonKey()
  final int percentage;
  @override
  @JsonKey()
  final int favorite;
  @override
  @JsonKey()
  final int inStock;
  @override
  final String? nameHighlight;
  @override
  final String? descriptionHighlight;
  @override
  final double? queryScore;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Product.output(id: $id, name: $name, displayPrice: $displayPrice, displayPriceAsString: $displayPriceAsString, price: $price, priceAsString: $priceAsString, description: $description, currency: $currency, image1: $image1, image2: $image2, image3: $image3, image4: $image4, image5: $image5, percentage: $percentage, favorite: $favorite, inStock: $inStock, nameHighlight: $nameHighlight, descriptionHighlight: $descriptionHighlight, queryScore: $queryScore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductOutput &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.displayPrice, displayPrice) ||
                other.displayPrice == displayPrice) &&
            (identical(other.displayPriceAsString, displayPriceAsString) ||
                other.displayPriceAsString == displayPriceAsString) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceAsString, priceAsString) ||
                other.priceAsString == priceAsString) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.image1, image1) || other.image1 == image1) &&
            (identical(other.image2, image2) || other.image2 == image2) &&
            (identical(other.image3, image3) || other.image3 == image3) &&
            (identical(other.image4, image4) || other.image4 == image4) &&
            (identical(other.image5, image5) || other.image5 == image5) &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite) &&
            (identical(other.inStock, inStock) || other.inStock == inStock) &&
            (identical(other.nameHighlight, nameHighlight) ||
                other.nameHighlight == nameHighlight) &&
            (identical(other.descriptionHighlight, descriptionHighlight) ||
                other.descriptionHighlight == descriptionHighlight) &&
            (identical(other.queryScore, queryScore) ||
                other.queryScore == queryScore));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        displayPrice,
        displayPriceAsString,
        price,
        priceAsString,
        description,
        currency,
        image1,
        image2,
        image3,
        image4,
        image5,
        percentage,
        favorite,
        inStock,
        nameHighlight,
        descriptionHighlight,
        queryScore
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductOutputCopyWith<_$ProductOutput> get copyWith =>
      __$$ProductOutputCopyWithImpl<_$ProductOutput>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String name,
            int displayPrice,
            String displayPriceAsString,
            int price,
            String priceAsString,
            String currency,
            String image1,
            int percentage,
            int isFavorite,
            int inStock)
        input,
    required TResult Function(
            String id,
            String name,
            int displayPrice,
            String displayPriceAsString,
            int price,
            String priceAsString,
            String description,
            String currency,
            String image1,
            String? image2,
            String? image3,
            String? image4,
            String? image5,
            int percentage,
            int favorite,
            int inStock,
            String? nameHighlight,
            String? descriptionHighlight,
            double? queryScore)
        output,
  }) {
    return output(
        id,
        name,
        displayPrice,
        displayPriceAsString,
        price,
        priceAsString,
        description,
        currency,
        image1,
        image2,
        image3,
        image4,
        image5,
        percentage,
        favorite,
        inStock,
        nameHighlight,
        descriptionHighlight,
        queryScore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String name,
            int displayPrice,
            String displayPriceAsString,
            int price,
            String priceAsString,
            String currency,
            String image1,
            int percentage,
            int isFavorite,
            int inStock)?
        input,
    TResult? Function(
            String id,
            String name,
            int displayPrice,
            String displayPriceAsString,
            int price,
            String priceAsString,
            String description,
            String currency,
            String image1,
            String? image2,
            String? image3,
            String? image4,
            String? image5,
            int percentage,
            int favorite,
            int inStock,
            String? nameHighlight,
            String? descriptionHighlight,
            double? queryScore)?
        output,
  }) {
    return output?.call(
        id,
        name,
        displayPrice,
        displayPriceAsString,
        price,
        priceAsString,
        description,
        currency,
        image1,
        image2,
        image3,
        image4,
        image5,
        percentage,
        favorite,
        inStock,
        nameHighlight,
        descriptionHighlight,
        queryScore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String name,
            int displayPrice,
            String displayPriceAsString,
            int price,
            String priceAsString,
            String currency,
            String image1,
            int percentage,
            int isFavorite,
            int inStock)?
        input,
    TResult Function(
            String id,
            String name,
            int displayPrice,
            String displayPriceAsString,
            int price,
            String priceAsString,
            String description,
            String currency,
            String image1,
            String? image2,
            String? image3,
            String? image4,
            String? image5,
            int percentage,
            int favorite,
            int inStock,
            String? nameHighlight,
            String? descriptionHighlight,
            double? queryScore)?
        output,
    required TResult orElse(),
  }) {
    if (output != null) {
      return output(
          id,
          name,
          displayPrice,
          displayPriceAsString,
          price,
          priceAsString,
          description,
          currency,
          image1,
          image2,
          image3,
          image4,
          image5,
          percentage,
          favorite,
          inStock,
          nameHighlight,
          descriptionHighlight,
          queryScore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductInput value) input,
    required TResult Function(ProductOutput value) output,
  }) {
    return output(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductInput value)? input,
    TResult? Function(ProductOutput value)? output,
  }) {
    return output?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductInput value)? input,
    TResult Function(ProductOutput value)? output,
    required TResult orElse(),
  }) {
    if (output != null) {
      return output(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductOutputToJson(
      this,
    );
  }
}

abstract class ProductOutput extends Product {
  const factory ProductOutput(
      {required final String id,
      required final String name,
      required final int displayPrice,
      required final String displayPriceAsString,
      required final int price,
      required final String priceAsString,
      required final String description,
      required final String currency,
      required final String image1,
      final String? image2,
      final String? image3,
      final String? image4,
      final String? image5,
      final int percentage,
      final int favorite,
      final int inStock,
      final String? nameHighlight,
      final String? descriptionHighlight,
      final double? queryScore}) = _$ProductOutput;
  const ProductOutput._() : super._();

  factory ProductOutput.fromJson(Map<String, dynamic> json) =
      _$ProductOutput.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get displayPrice;
  @override
  String get displayPriceAsString;
  @override
  int get price;
  @override
  String get priceAsString;
  String get description;
  @override
  String get currency;
  @override
  String get image1;
  String? get image2;
  String? get image3;
  String? get image4;
  String? get image5;
  @override
  int get percentage;
  int get favorite;
  @override
  int get inStock;
  String? get nameHighlight;
  String? get descriptionHighlight;
  double? get queryScore;
  @override
  @JsonKey(ignore: true)
  _$$ProductOutputCopyWith<_$ProductOutput> get copyWith =>
      throw _privateConstructorUsedError;
}
