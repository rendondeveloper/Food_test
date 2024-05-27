import 'package:bloc/bloc.dart';
import 'package:food_test/features/detail/domain/state/detail_process.dart';
import 'package:food_test/features/detail/domain/state/food_detail_ingredient.dart';
import 'package:food_test/features/detail/domain/state/food_detail_instruction.dart';
import 'package:food_test/features/detail/domain/use_cases/get_datail_use_cases.dart';
import 'package:food_test/features/detail/framework/presentation/bloc/mapper/meal_detail_to_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_bloc.freezed.dart';
part 'detail_bloc_event.dart';
part 'detail_bloc_state.dart';

class DetailBloc extends Bloc<DetailBlocEvent, DetailBlocState> {
  DetailBloc(this._getDatailUseCases, this._mealToDetail)
      : super(DetailBlocState(state: DetailProcess.loading())) {
    on<_GetDetail>(_onGetDetail);
    on<_SetImageToolbar>(_onSetImageToolbar);
  }

  final GetDatailUseCases _getDatailUseCases;
  final MealDetailToDetail _mealToDetail;

  _onGetDetail(_GetDetail event, Emitter<DetailBlocState> emit) async {
    emit(state.copyWith(state: DetailProcess.loading()));
    try {
      final response = await _getDatailUseCases.invoke(event.identifier);

      if (response.error != null) {
        emit(state.copyWith(state: DetailProcess.error()));
        return;
      }

      final data = _mealToDetail.map(response.success!);

      emit(state.copyWith(
          state: DetailProcess.success(),
          name: data.name,
          instructions: data.instructions,
          ingredients: data.ingredients));
    } catch (ex) {
      emit(state.copyWith(state: DetailProcess.error()));
    }
  }

  _onSetImageToolbar(_SetImageToolbar event, Emitter<DetailBlocState> emit) {
    emit(state.copyWith(imageUrl: event.imageUrl));
  }
}
