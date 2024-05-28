// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getNewData,
    required TResult Function(FoodItem item, int index) changeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getNewData,
    TResult? Function(FoodItem item, int index)? changeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getNewData,
    TResult Function(FoodItem item, int index)? changeFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetNewData value) getNewData,
    required TResult Function(_ChangeFavorite value) changeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNewData value)? getNewData,
    TResult? Function(_ChangeFavorite value)? changeFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNewData value)? getNewData,
    TResult Function(_ChangeFavorite value)? changeFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getNewData,
    required TResult Function(FoodItem item, int index) changeFavorite,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getNewData,
    TResult? Function(FoodItem item, int index)? changeFavorite,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getNewData,
    TResult Function(FoodItem item, int index)? changeFavorite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetNewData value) getNewData,
    required TResult Function(_ChangeFavorite value) changeFavorite,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNewData value)? getNewData,
    TResult? Function(_ChangeFavorite value)? changeFavorite,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNewData value)? getNewData,
    TResult Function(_ChangeFavorite value)? changeFavorite,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetNewDataImplCopyWith<$Res> {
  factory _$$GetNewDataImplCopyWith(
          _$GetNewDataImpl value, $Res Function(_$GetNewDataImpl) then) =
      __$$GetNewDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNewDataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetNewDataImpl>
    implements _$$GetNewDataImplCopyWith<$Res> {
  __$$GetNewDataImplCopyWithImpl(
      _$GetNewDataImpl _value, $Res Function(_$GetNewDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetNewDataImpl implements _GetNewData {
  const _$GetNewDataImpl();

  @override
  String toString() {
    return 'HomeEvent.getNewData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNewDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getNewData,
    required TResult Function(FoodItem item, int index) changeFavorite,
  }) {
    return getNewData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getNewData,
    TResult? Function(FoodItem item, int index)? changeFavorite,
  }) {
    return getNewData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getNewData,
    TResult Function(FoodItem item, int index)? changeFavorite,
    required TResult orElse(),
  }) {
    if (getNewData != null) {
      return getNewData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetNewData value) getNewData,
    required TResult Function(_ChangeFavorite value) changeFavorite,
  }) {
    return getNewData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNewData value)? getNewData,
    TResult? Function(_ChangeFavorite value)? changeFavorite,
  }) {
    return getNewData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNewData value)? getNewData,
    TResult Function(_ChangeFavorite value)? changeFavorite,
    required TResult orElse(),
  }) {
    if (getNewData != null) {
      return getNewData(this);
    }
    return orElse();
  }
}

abstract class _GetNewData implements HomeEvent {
  const factory _GetNewData() = _$GetNewDataImpl;
}

/// @nodoc
abstract class _$$ChangeFavoriteImplCopyWith<$Res> {
  factory _$$ChangeFavoriteImplCopyWith(_$ChangeFavoriteImpl value,
          $Res Function(_$ChangeFavoriteImpl) then) =
      __$$ChangeFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FoodItem item, int index});

  $FoodItemCopyWith<$Res> get item;
}

/// @nodoc
class __$$ChangeFavoriteImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ChangeFavoriteImpl>
    implements _$$ChangeFavoriteImplCopyWith<$Res> {
  __$$ChangeFavoriteImplCopyWithImpl(
      _$ChangeFavoriteImpl _value, $Res Function(_$ChangeFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = null,
    Object? index = null,
  }) {
    return _then(_$ChangeFavoriteImpl(
      null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as FoodItem,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FoodItemCopyWith<$Res> get item {
    return $FoodItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc

class _$ChangeFavoriteImpl implements _ChangeFavorite {
  const _$ChangeFavoriteImpl(this.item, this.index);

  @override
  final FoodItem item;
  @override
  final int index;

  @override
  String toString() {
    return 'HomeEvent.changeFavorite(item: $item, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeFavoriteImpl &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeFavoriteImplCopyWith<_$ChangeFavoriteImpl> get copyWith =>
      __$$ChangeFavoriteImplCopyWithImpl<_$ChangeFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getNewData,
    required TResult Function(FoodItem item, int index) changeFavorite,
  }) {
    return changeFavorite(item, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getNewData,
    TResult? Function(FoodItem item, int index)? changeFavorite,
  }) {
    return changeFavorite?.call(item, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getNewData,
    TResult Function(FoodItem item, int index)? changeFavorite,
    required TResult orElse(),
  }) {
    if (changeFavorite != null) {
      return changeFavorite(item, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetNewData value) getNewData,
    required TResult Function(_ChangeFavorite value) changeFavorite,
  }) {
    return changeFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetNewData value)? getNewData,
    TResult? Function(_ChangeFavorite value)? changeFavorite,
  }) {
    return changeFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetNewData value)? getNewData,
    TResult Function(_ChangeFavorite value)? changeFavorite,
    required TResult orElse(),
  }) {
    if (changeFavorite != null) {
      return changeFavorite(this);
    }
    return orElse();
  }
}

abstract class _ChangeFavorite implements HomeEvent {
  const factory _ChangeFavorite(final FoodItem item, final int index) =
      _$ChangeFavoriteImpl;

  FoodItem get item;
  int get index;
  @JsonKey(ignore: true)
  _$$ChangeFavoriteImplCopyWith<_$ChangeFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  HomeProcess? get state => throw _privateConstructorUsedError;
  bool? get loadNews => throw _privateConstructorUsedError;
  List<FoodItem>? get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({HomeProcess? state, bool? loadNews, List<FoodItem>? items});

  $HomeProcessCopyWith<$Res>? get state;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? loadNews = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as HomeProcess?,
      loadNews: freezed == loadNews
          ? _value.loadNews
          : loadNews // ignore: cast_nullable_to_non_nullable
              as bool?,
      items: freezed == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FoodItem>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeProcessCopyWith<$Res>? get state {
    if (_value.state == null) {
      return null;
    }

    return $HomeProcessCopyWith<$Res>(_value.state!, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeProcess? state, bool? loadNews, List<FoodItem>? items});

  @override
  $HomeProcessCopyWith<$Res>? get state;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = freezed,
    Object? loadNews = freezed,
    Object? items = freezed,
  }) {
    return _then(_$HomeStateImpl(
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as HomeProcess?,
      loadNews: freezed == loadNews
          ? _value.loadNews
          : loadNews // ignore: cast_nullable_to_non_nullable
              as bool?,
      items: freezed == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FoodItem>?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl extends _HomeState {
  const _$HomeStateImpl(
      {this.state = null,
      this.loadNews = false,
      final List<FoodItem>? items = null})
      : _items = items,
        super._();

  @override
  @JsonKey()
  final HomeProcess? state;
  @override
  @JsonKey()
  final bool? loadNews;
  final List<FoodItem>? _items;
  @override
  @JsonKey()
  List<FoodItem>? get items {
    final value = _items;
    if (value == null) return null;
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeState(state: $state, loadNews: $loadNews, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.loadNews, loadNews) ||
                other.loadNews == loadNews) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, loadNews,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState extends HomeState {
  const factory _HomeState(
      {final HomeProcess? state,
      final bool? loadNews,
      final List<FoodItem>? items}) = _$HomeStateImpl;
  const _HomeState._() : super._();

  @override
  HomeProcess? get state;
  @override
  bool? get loadNews;
  @override
  List<FoodItem>? get items;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
