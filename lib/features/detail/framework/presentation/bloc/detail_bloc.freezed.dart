// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String identifier) getDetail,
    required TResult Function(String imageUrl) setImageToolbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String identifier)? getDetail,
    TResult? Function(String imageUrl)? setImageToolbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String identifier)? getDetail,
    TResult Function(String imageUrl)? setImageToolbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetail value) getDetail,
    required TResult Function(_SetImageToolbar value) setImageToolbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetail value)? getDetail,
    TResult? Function(_SetImageToolbar value)? setImageToolbar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetail value)? getDetail,
    TResult Function(_SetImageToolbar value)? setImageToolbar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailBlocEventCopyWith<$Res> {
  factory $DetailBlocEventCopyWith(
          DetailBlocEvent value, $Res Function(DetailBlocEvent) then) =
      _$DetailBlocEventCopyWithImpl<$Res, DetailBlocEvent>;
}

/// @nodoc
class _$DetailBlocEventCopyWithImpl<$Res, $Val extends DetailBlocEvent>
    implements $DetailBlocEventCopyWith<$Res> {
  _$DetailBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDetailImplCopyWith<$Res> {
  factory _$$GetDetailImplCopyWith(
          _$GetDetailImpl value, $Res Function(_$GetDetailImpl) then) =
      __$$GetDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String identifier});
}

/// @nodoc
class __$$GetDetailImplCopyWithImpl<$Res>
    extends _$DetailBlocEventCopyWithImpl<$Res, _$GetDetailImpl>
    implements _$$GetDetailImplCopyWith<$Res> {
  __$$GetDetailImplCopyWithImpl(
      _$GetDetailImpl _value, $Res Function(_$GetDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
  }) {
    return _then(_$GetDetailImpl(
      null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDetailImpl implements _GetDetail {
  const _$GetDetailImpl(this.identifier);

  @override
  final String identifier;

  @override
  String toString() {
    return 'DetailBlocEvent.getDetail(identifier: $identifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, identifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailImplCopyWith<_$GetDetailImpl> get copyWith =>
      __$$GetDetailImplCopyWithImpl<_$GetDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String identifier) getDetail,
    required TResult Function(String imageUrl) setImageToolbar,
  }) {
    return getDetail(identifier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String identifier)? getDetail,
    TResult? Function(String imageUrl)? setImageToolbar,
  }) {
    return getDetail?.call(identifier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String identifier)? getDetail,
    TResult Function(String imageUrl)? setImageToolbar,
    required TResult orElse(),
  }) {
    if (getDetail != null) {
      return getDetail(identifier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetail value) getDetail,
    required TResult Function(_SetImageToolbar value) setImageToolbar,
  }) {
    return getDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetail value)? getDetail,
    TResult? Function(_SetImageToolbar value)? setImageToolbar,
  }) {
    return getDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetail value)? getDetail,
    TResult Function(_SetImageToolbar value)? setImageToolbar,
    required TResult orElse(),
  }) {
    if (getDetail != null) {
      return getDetail(this);
    }
    return orElse();
  }
}

abstract class _GetDetail implements DetailBlocEvent {
  const factory _GetDetail(final String identifier) = _$GetDetailImpl;

  String get identifier;
  @JsonKey(ignore: true)
  _$$GetDetailImplCopyWith<_$GetDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetImageToolbarImplCopyWith<$Res> {
  factory _$$SetImageToolbarImplCopyWith(_$SetImageToolbarImpl value,
          $Res Function(_$SetImageToolbarImpl) then) =
      __$$SetImageToolbarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String imageUrl});
}

/// @nodoc
class __$$SetImageToolbarImplCopyWithImpl<$Res>
    extends _$DetailBlocEventCopyWithImpl<$Res, _$SetImageToolbarImpl>
    implements _$$SetImageToolbarImplCopyWith<$Res> {
  __$$SetImageToolbarImplCopyWithImpl(
      _$SetImageToolbarImpl _value, $Res Function(_$SetImageToolbarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$SetImageToolbarImpl(
      null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetImageToolbarImpl implements _SetImageToolbar {
  const _$SetImageToolbarImpl(this.imageUrl);

  @override
  final String imageUrl;

  @override
  String toString() {
    return 'DetailBlocEvent.setImageToolbar(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetImageToolbarImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetImageToolbarImplCopyWith<_$SetImageToolbarImpl> get copyWith =>
      __$$SetImageToolbarImplCopyWithImpl<_$SetImageToolbarImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String identifier) getDetail,
    required TResult Function(String imageUrl) setImageToolbar,
  }) {
    return setImageToolbar(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String identifier)? getDetail,
    TResult? Function(String imageUrl)? setImageToolbar,
  }) {
    return setImageToolbar?.call(imageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String identifier)? getDetail,
    TResult Function(String imageUrl)? setImageToolbar,
    required TResult orElse(),
  }) {
    if (setImageToolbar != null) {
      return setImageToolbar(imageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDetail value) getDetail,
    required TResult Function(_SetImageToolbar value) setImageToolbar,
  }) {
    return setImageToolbar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDetail value)? getDetail,
    TResult? Function(_SetImageToolbar value)? setImageToolbar,
  }) {
    return setImageToolbar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDetail value)? getDetail,
    TResult Function(_SetImageToolbar value)? setImageToolbar,
    required TResult orElse(),
  }) {
    if (setImageToolbar != null) {
      return setImageToolbar(this);
    }
    return orElse();
  }
}

abstract class _SetImageToolbar implements DetailBlocEvent {
  const factory _SetImageToolbar(final String imageUrl) = _$SetImageToolbarImpl;

  String get imageUrl;
  @JsonKey(ignore: true)
  _$$SetImageToolbarImplCopyWith<_$SetImageToolbarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailBlocState {
  DetailProcess? get state => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<FoodDetailIngredient>? get ingredients =>
      throw _privateConstructorUsedError;
  List<FoodDetailInstruction>? get instructions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailBlocStateCopyWith<DetailBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailBlocStateCopyWith<$Res> {
  factory $DetailBlocStateCopyWith(
          DetailBlocState value, $Res Function(DetailBlocState) then) =
      _$DetailBlocStateCopyWithImpl<$Res, DetailBlocState>;
  @useResult
  $Res call(
      {DetailProcess? state,
      String? imageUrl,
      String? name,
      List<FoodDetailIngredient>? ingredients,
      List<FoodDetailInstruction>? instructions});

  $DetailProcessCopyWith<$Res>? get state;
}

/// @nodoc
class _$DetailBlocStateCopyWithImpl<$Res, $Val extends DetailBlocState>
    implements $DetailBlocStateCopyWith<$Res> {
  _$DetailBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? ingredients = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_value.copyWith(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as DetailProcess?,
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
  $DetailProcessCopyWith<$Res>? get state {
    if (_value.state == null) {
      return null;
    }

    return $DetailProcessCopyWith<$Res>(_value.state!, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailBlocStateImplCopyWith<$Res>
    implements $DetailBlocStateCopyWith<$Res> {
  factory _$$DetailBlocStateImplCopyWith(_$DetailBlocStateImpl value,
          $Res Function(_$DetailBlocStateImpl) then) =
      __$$DetailBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DetailProcess? state,
      String? imageUrl,
      String? name,
      List<FoodDetailIngredient>? ingredients,
      List<FoodDetailInstruction>? instructions});

  @override
  $DetailProcessCopyWith<$Res>? get state;
}

/// @nodoc
class __$$DetailBlocStateImplCopyWithImpl<$Res>
    extends _$DetailBlocStateCopyWithImpl<$Res, _$DetailBlocStateImpl>
    implements _$$DetailBlocStateImplCopyWith<$Res> {
  __$$DetailBlocStateImplCopyWithImpl(
      _$DetailBlocStateImpl _value, $Res Function(_$DetailBlocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? imageUrl = freezed,
    Object? name = freezed,
    Object? ingredients = freezed,
    Object? instructions = freezed,
  }) {
    return _then(_$DetailBlocStateImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as DetailProcess?,
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

class _$DetailBlocStateImpl extends _DetailBlocState {
  const _$DetailBlocStateImpl(
      {this.state = null,
      this.imageUrl = null,
      this.name = null,
      final List<FoodDetailIngredient>? ingredients = null,
      final List<FoodDetailInstruction>? instructions = null})
      : _ingredients = ingredients,
        _instructions = instructions,
        super._();

  @override
  @JsonKey()
  final DetailProcess? state;
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
    return 'DetailBlocState(state: $state, imageUrl: $imageUrl, name: $name, ingredients: $ingredients, instructions: $instructions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailBlocStateImpl &&
            (identical(other.state, state) || other.state == state) &&
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
      state,
      imageUrl,
      name,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_instructions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailBlocStateImplCopyWith<_$DetailBlocStateImpl> get copyWith =>
      __$$DetailBlocStateImplCopyWithImpl<_$DetailBlocStateImpl>(
          this, _$identity);
}

abstract class _DetailBlocState extends DetailBlocState {
  const factory _DetailBlocState(
      {final DetailProcess? state,
      final String? imageUrl,
      final String? name,
      final List<FoodDetailIngredient>? ingredients,
      final List<FoodDetailInstruction>? instructions}) = _$DetailBlocStateImpl;
  const _DetailBlocState._() : super._();

  @override
  DetailProcess? get state;
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
  _$$DetailBlocStateImplCopyWith<_$DetailBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
