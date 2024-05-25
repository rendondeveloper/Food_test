import 'package:food_test/features/home/domain/state/food_item.dart';
import 'package:food_test/features/home/domain/state/home_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(null) HomeStatus? status,
    @Default(null) List<FoodItem>? foodItems,
  }) = _HomeState;

  const HomeState._();
}
