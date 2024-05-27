part of 'detail_bloc.dart';

@freezed
class DetailBlocState with _$DetailBlocState {
  const factory DetailBlocState(
          {@Default(null) DetailProcess? state,
          @Default(null) String? imageUrl,
          @Default(null) String? name,
          @Default(null) List<FoodDetailIngredient>? ingredients,
          @Default(null) List<FoodDetailInstruction>? instructions}) =
      _DetailBlocState;
  const DetailBlocState._();
}
