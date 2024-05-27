part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(null) HomeProcess? state,
    @Default(false) bool? loadNews,
    @Default(null) List<FoodItem>? items,
  }) = _HomeState;

  const HomeState._();
}
