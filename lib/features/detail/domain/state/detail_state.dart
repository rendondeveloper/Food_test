import 'package:food_test/features/detail/domain/state/detail_status.dart';
import 'package:food_test/features/detail/domain/state/food_detail_ingredient.dart';
import 'package:food_test/features/detail/domain/state/food_detail_instruction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_state.freezed.dart';

@freezed
class DetailState with _$DetailState {
  const factory DetailState({
    @Default(null) DetailStatus? status,
    @Default(null) String? imageUrl,
    @Default(null) String? name,
    @Default(null) List<FoodDetailIngredient>? ingredients,
    @Default(null) List<FoodDetailInstruction>? instructions,
  }) = _DetailState;

  const DetailState._();
}
