import "dart:async";

import "package:bloc/bloc.dart";
import "package:food_test/core/feature/favoritie/domain/use_cases/delete_favorities_use_case.dart";
import "package:food_test/core/feature/favoritie/domain/use_cases/put_favorities_use_case.dart";
import "package:food_test/features/home/domain/state/food_item.dart";
import "package:food_test/features/home/domain/state/home_process.dart";
import "package:food_test/features/home/domain/use_cases/get_home_dara_use_cases.dart";
import "package:food_test/features/home/framework/presentation/bloc/mapper/meal_to_food_item.dart";
import "package:freezed_annotation/freezed_annotation.dart";

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._getHomeDataUseCases, this._mapper,
      this._deleteFavoritiesUseCases, this._putFavoritiesUseCases)
      : super(HomeState(state: HomeProcess.loading())) {
    on<_Started>(_onStarted);
    on<_GetNewData>(_onGetNewData);
    on<_ChangeFavorite>(_onChangeFavorite);
  }

  final DeleteFavoritiesUseCases _deleteFavoritiesUseCases;
  final PutFavoritiesUseCases _putFavoritiesUseCases;
  final GetHomeDataUseCases _getHomeDataUseCases;
  final MealToFoodItem _mapper;

  _onStarted(_Started event, Emitter<HomeState> emit) async {
    emit(state.copyWith(state: HomeProcess.loading()));
    try {
      final response = await _getHomeDataUseCases.invoke();

      if (response.error != null) {
        emit(state.copyWith(state: HomeProcess.error()));
        return;
      }

      if (response.success?.meals?.isEmpty == true) {
        emit(state.copyWith(state: HomeProcess.emptyState()));
        return;
      }

      final data = response.success?.meals?.map((e) => _mapper.map(e)).toList();
      emit(state.copyWith(
        items: data ?? [],
        state: HomeProcess.success(),
      ));
    } catch (ex) {
      emit(state.copyWith(state: HomeProcess.error()));
    }
  }

  _onGetNewData(_GetNewData event, Emitter<HomeState> emit) async {
    emit(state.copyWith(loadNews: true));

    await Future.delayed(const Duration(seconds: 3));

    try {
      final response = await _getHomeDataUseCases.invoke();

      if (response.error != null) {
        emit(state.copyWith(loadNews: false, state: HomeProcess.error()));
        return;
      }

      if (response.success?.meals?.isEmpty == true) {
        emit(state.copyWith(loadNews: false, state: HomeProcess.emptyState()));
        return;
      }

      final data = response.success?.meals?.map((e) => _mapper.map(e)).toList();
      final allItems = List<FoodItem>.from(state.items ?? [])
        ..addAll(data ?? []);
      emit(state.copyWith(
        loadNews: false,
        items: allItems,
        state: HomeProcess.success(),
      ));
    } catch (ex) {
      emit(state.copyWith(loadNews: false, state: HomeProcess.error()));
    }
  }

  _onChangeFavorite(_ChangeFavorite event, Emitter<HomeState> emit) async {
    if (event.item.isFavorite) {
      final result =
          await _deleteFavoritiesUseCases.invoke(event.item.identifier ?? "");

      if (result) {
        final listBase = List<FoodItem>.from(state.items ?? []);
        listBase[event.index] =
            listBase[event.index].copyWith(isFavorite: !event.item.isFavorite);
        emit(state.copyWith(items: listBase));
      }
    } else {
      final result =
          await _putFavoritiesUseCases.invoke(event.item.identifier ?? "");
      if (result) {
        final listBase = List<FoodItem>.from(state.items ?? []);
        listBase[event.index] =
            listBase[event.index].copyWith(isFavorite: !event.item.isFavorite);
        emit(state.copyWith(items: listBase));
      }
    }
  }
}
