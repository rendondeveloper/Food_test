import 'package:food_test/features/search_food/data/data_source/search_data_source.dart';
import 'package:food_test/features/search_food/data/repository/search_repository.dart';
import 'package:food_test/features/search_food/domain/use_cases/search_food_use_cases.dart';
import 'package:food_test/features/search_food/framework/bloc/mapper/meal_short_to_search_item.dart';
import 'package:food_test/features/search_food/framework/bloc/search_bloc.dart';
import 'package:injector/injector.dart';
import 'package:util_commons/utils/network/apiconnect.dart';

class SearchInjection {
  void register() {
    final injector = Injector.appInstance;
    Injector.appInstance
      ..registerDependency(() => SearchDataSource(injector.get<ApiConnect>()))
      ..registerDependency(
          () => SearchRepository(injector.get<SearchDataSource>()))
      ..registerDependency(() => MealShortToSeachItem())
      ..registerDependency(() => SearchFoodDataUseCases(injector.get()))
      ..registerDependency(() => SearchBloc(injector.get(), injector.get()));
  }
}
