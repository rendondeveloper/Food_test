import 'package:bloc/bloc.dart';
import 'package:food_test/features/search_food/domain/state/search_item.dart';
import 'package:food_test/features/search_food/domain/state/search_status.dart';
import 'package:food_test/features/search_food/domain/use_cases/search_food_use_cases.dart';
import 'package:food_test/features/search_food/framework/bloc/mapper/meal_short_to_search_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(this._searchFoodDataUseCases, this._mapper)
      : super(SearchState(status: SearchStatus.nothing())) {
    on<SearchEvent>(_onSearchFood);
  }

  final SearchFoodDataUseCases _searchFoodDataUseCases;
  final MealShortToSeachItem _mapper;

  _onSearchFood(SearchEvent event, Emitter<SearchState> emit) async {
    emit(state.copyWith(status: SearchStatus.loading()));
    try {
      final response = await _searchFoodDataUseCases.invoke(event.text);

      if (response.error != null) {
        emit(state.copyWith(status: SearchStatus.error()));
        return;
      }

      if (response.success == null ||
          response.success?.meals?.isEmpty == true) {
        emit(state.copyWith(status: SearchStatus.empty()));
        return;
      }

      final data = response.success?.meals?.map((e) => _mapper.map(e)).toList();
      emit(state.copyWith(
        results: data ?? [],
        status: SearchStatus.success(),
      ));
    } catch (ex) {
      emit(state.copyWith(status: SearchStatus.error()));
    }
  }
}
