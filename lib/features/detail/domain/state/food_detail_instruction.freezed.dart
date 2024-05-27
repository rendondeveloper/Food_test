// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_detail_instruction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FoodDetailInstruction {
  String? get description => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodDetailInstructionCopyWith<FoodDetailInstruction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodDetailInstructionCopyWith<$Res> {
  factory $FoodDetailInstructionCopyWith(FoodDetailInstruction value,
          $Res Function(FoodDetailInstruction) then) =
      _$FoodDetailInstructionCopyWithImpl<$Res, FoodDetailInstruction>;
  @useResult
  $Res call({String? description});
}

/// @nodoc
class _$FoodDetailInstructionCopyWithImpl<$Res,
        $Val extends FoodDetailInstruction>
    implements $FoodDetailInstructionCopyWith<$Res> {
  _$FoodDetailInstructionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodDetailInstructionImplCopyWith<$Res>
    implements $FoodDetailInstructionCopyWith<$Res> {
  factory _$$FoodDetailInstructionImplCopyWith(
          _$FoodDetailInstructionImpl value,
          $Res Function(_$FoodDetailInstructionImpl) then) =
      __$$FoodDetailInstructionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? description});
}

/// @nodoc
class __$$FoodDetailInstructionImplCopyWithImpl<$Res>
    extends _$FoodDetailInstructionCopyWithImpl<$Res,
        _$FoodDetailInstructionImpl>
    implements _$$FoodDetailInstructionImplCopyWith<$Res> {
  __$$FoodDetailInstructionImplCopyWithImpl(_$FoodDetailInstructionImpl _value,
      $Res Function(_$FoodDetailInstructionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$FoodDetailInstructionImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FoodDetailInstructionImpl extends _FoodDetailInstruction {
  const _$FoodDetailInstructionImpl({this.description = null}) : super._();

  @override
  @JsonKey()
  final String? description;

  @override
  String toString() {
    return 'FoodDetailInstruction(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodDetailInstructionImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodDetailInstructionImplCopyWith<_$FoodDetailInstructionImpl>
      get copyWith => __$$FoodDetailInstructionImplCopyWithImpl<
          _$FoodDetailInstructionImpl>(this, _$identity);
}

abstract class _FoodDetailInstruction extends FoodDetailInstruction {
  const factory _FoodDetailInstruction({final String? description}) =
      _$FoodDetailInstructionImpl;
  const _FoodDetailInstruction._() : super._();

  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$FoodDetailInstructionImplCopyWith<_$FoodDetailInstructionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
