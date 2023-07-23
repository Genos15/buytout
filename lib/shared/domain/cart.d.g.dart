// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.d.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cart _$$_CartFromJson(Map<String, dynamic> json) => _$_Cart(
      id: json['id'] as String,
      products: (json['products'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            _$recordConvert(
              e,
              ($jsonValue) => (
                $jsonValue[r'$1'] as int,
                Product.fromJson($jsonValue[r'$2'] as Map<String, dynamic>),
              ),
            )),
      ),
    );

Map<String, dynamic> _$$_CartToJson(_$_Cart instance) => <String, dynamic>{
      'id': instance.id,
      'products': instance.products.map((k, e) => MapEntry(k, {
            r'$1': e.$1,
            r'$2': e.$2,
          })),
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);
