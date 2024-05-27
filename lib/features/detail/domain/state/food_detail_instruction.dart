import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_detail_instruction.freezed.dart';

@freezed
class FoodDetailInstruction with _$FoodDetailInstruction {
  const factory FoodDetailInstruction({@Default(null) String? description}) =
      _FoodDetailInstruction;

  const FoodDetailInstruction._();
}
