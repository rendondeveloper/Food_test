// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailState {
  DetailStatus? get status => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<FoodDetailIngredient>? get ingredients =>
      throw _privateConstructorUsedError;
  List<FoodDetailInstruction>? get instructions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailStateCopyWith<DetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailStateCopyWith<$Res> {
  factory $DetailStateCopyWith(
          DetailState value, $Res Function(DetailState) then) =
      _$DetailStateCopyWithImpl<$Res, DetailState>;
  @useResult
  $Res call(
      {DetailStatus? status,
      String? imageUrl,
      String? name,
      List<FoodDetailIngredient>? ingredients,
      List<FoodDetailInstruction>? instructions});

  $DetailStatusCopyWith<$Res>? get status;
}

/// @nodoc
class _$DetailStateCopyWithImpl<$Res, $Val extends DetailState>
    implements $DetailStateCopyWith<$Res> {
  _$DetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? ingredients = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailStatus?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<FoodDetailIngredient>?,
      instructions: freezed == instructions
          ? _value.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<FoodDetailInstruction>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $DetailStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailStateImplCopyWith<$Res>
    implements $DetailStateCopyWith<$Res> {
  factory _$$DetailStateImplCopyWith(
          _$DetailStateImpl value, $Res Function(_$DetailStateImpl) then) =
      __$$DetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DetailStatus? status,
      String? imageUrl,
      String? name,
      List<FoodDetailIngredient>? ingredients,
      List<FoodDetailInstruction>? instructions});

  @override
  $DetailStatusCopyWith<$Res>? get status;
}

/// @nodoc
class __$$DetailStateImplCopyWithImpl<$Res>
    extends _$DetailStateCopyWithImpl<$Res, _$DetailStateImpl>
    implements _$$DetailStateImplCopyWith<$Res> {
  __$$DetailStateImplCopyWithImpl(
      _$DetailStateImpl _value, $Res Function(_$DetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? ingredients = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_$DetailStateImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DetailStatus?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      ingredients: freezed == ingredients
          ? _value._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<FoodDetailIngredient>?,
      instructions: freezed == instructions
          ? _value._instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as List<FoodDetailInstruction>?,
    ));
  }
}

/// @nodoc

class _$DetailStateImpl extends _DetailState {
  const _$DetailStateImpl(
      {this.status = null,
      this.imageUrl = null,
      this.name = null,
      final List<FoodDetailIngredient>? ingredients = null,
      final List<FoodDetailInstruction>? instructions = null})
      : _ingredients = ingredients,
        _instructions = instructions,
        super._();

  @override
  @JsonKey()
  final DetailStatus? status;
  @override
  @JsonKey()
  final String? imageUrl;
  @override
  @JsonKey()
  final String? name;
  final List<FoodDetailIngredient>? _ingredients;
  @override
  @JsonKey()
  List<FoodDetailIngredient>? get ingredients {
    final value = _ingredients;
    if (value == null) return null;
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FoodDetailInstruction>? _instructions;
  @override
  @JsonKey()
  List<FoodDetailInstruction>? get instructions {
    final value = _instructions;
    if (value == null) return null;
    if (_instructions is EqualUnmodifiableListView) return _instructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DetailState(status: $status, imageUrl: $imageUrl, name: $name, ingredients: $ingredients, instructions: $instructions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._instructions, _instructions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      imageUrl,
      name,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_instructions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      __$$DetailStateImplCopyWithImpl<_$DetailStateImpl>(this, _$identity);
}

abstract class _DetailState extends DetailState {
  const factory _DetailState(
      {final DetailStatus? status,
      final String? imageUrl,
      final String? name,
      final List<FoodDetailIngredient>? ingredients,
      final List<FoodDetailInstruction>? instructions}) = _$DetailStateImpl;
  const _DetailState._() : super._();

  @override
  DetailStatus? get status;
  @override
  String? get imageUrl;
  @override
  String? get name;
  @override
  List<FoodDetailIngredient>? get ingredients;
  @override
  List<FoodDetailInstruction>? get instructions;
  @override
  @JsonKey(ignore: true)
  _$$DetailStateImplCopyWith<_$DetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
