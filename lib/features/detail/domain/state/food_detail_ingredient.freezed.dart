// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_detail_ingredient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FoodDetailIngredient {
  int? get identifier => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodDetailIngredientCopyWith<FoodDetailIngredient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodDetailIngredientCopyWith<$Res> {
  factory $FoodDetailIngredientCopyWith(FoodDetailIngredient value,
          $Res Function(FoodDetailIngredient) then) =
      _$FoodDetailIngredientCopyWithImpl<$Res, FoodDetailIngredient>;
  @useResult
  $Res call({int? identifier, int? order, String? name, String? imageUrl});
}

/// @nodoc
class _$FoodDetailIngredientCopyWithImpl<$Res,
        $Val extends FoodDetailIngredient>
    implements $FoodDetailIngredientCopyWith<$Res> {
  _$FoodDetailIngredientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? order = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodDetailIngredientImplCopyWith<$Res>
    implements $FoodDetailIngredientCopyWith<$Res> {
  factory _$$FoodDetailIngredientImplCopyWith(_$FoodDetailIngredientImpl value,
          $Res Function(_$FoodDetailIngredientImpl) then) =
      __$$FoodDetailIngredientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? identifier, int? order, String? name, String? imageUrl});
}

/// @nodoc
class __$$FoodDetailIngredientImplCopyWithImpl<$Res>
    extends _$FoodDetailIngredientCopyWithImpl<$Res, _$FoodDetailIngredientImpl>
    implements _$$FoodDetailIngredientImplCopyWith<$Res> {
  __$$FoodDetailIngredientImplCopyWithImpl(_$FoodDetailIngredientImpl _value,
      $Res Function(_$FoodDetailIngredientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = freezed,
    Object? order = freezed,
    Object? name = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$FoodDetailIngredientImpl(
      identifier: freezed == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as int?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FoodDetailIngredientImpl extends _FoodDetailIngredient {
  const _$FoodDetailIngredientImpl(
      {this.identifier = null,
      this.order = null,
      this.name = null,
      this.imageUrl = null})
      : super._();

  @override
  @JsonKey()
  final int? identifier;
  @override
  @JsonKey()
  final int? order;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? imageUrl;

  @override
  String toString() {
    return 'FoodDetailIngredient(identifier: $identifier, order: $order, name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodDetailIngredientImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, identifier, order, name, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodDetailIngredientImplCopyWith<_$FoodDetailIngredientImpl>
      get copyWith =>
          __$$FoodDetailIngredientImplCopyWithImpl<_$FoodDetailIngredientImpl>(
              this, _$identity);
}

abstract class _FoodDetailIngredient extends FoodDetailIngredient {
  const factory _FoodDetailIngredient(
      {final int? identifier,
      final int? order,
      final String? name,
      final String? imageUrl}) = _$FoodDetailIngredientImpl;
  const _FoodDetailIngredient._() : super._();

  @override
  int? get identifier;
  @override
  int? get order;
  @override
  String? get name;
  @override
  String? get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$FoodDetailIngredientImplCopyWith<_$FoodDetailIngredientImpl>
      get copyWith => throw _privateConstructorUsedError;
}
