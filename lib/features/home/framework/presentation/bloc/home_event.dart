part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;
  const factory HomeEvent.getNewData() = _GetNewData;
  const factory HomeEvent.changeFavorite(FoodItem item, int index) =
      _ChangeFavorite;
}
