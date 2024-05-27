import 'package:food_test/features/home/data/data_source/home_data_source.dart';
import 'package:food_test/features/home/data/repository/home_repository.dart';
import 'package:food_test/features/home/domain/use_cases/get_home_dara_use_cases.dart';
import 'package:food_test/features/home/framework/presentation/bloc/home_bloc.dart';
import 'package:food_test/features/home/framework/presentation/bloc/mapper/meal_to_food_item.dart';
import 'package:injector/injector.dart';
import 'package:util_commons/utils/network/apiconnect.dart';

class HomeInjection {
  void register() {
    final injector = Injector.appInstance;
    Injector.appInstance
      ..registerDependency(() => HomeDataSource(injector.get<ApiConnect>()))
      ..registerDependency(() => HomeRepository(injector.get<HomeDataSource>()))
      ..registerDependency(() => MealToFoodItem(injector.get()))
      ..registerDependency(() => GetHomeDataUseCases(injector.get()))
      ..registerDependency(() => HomeBloc(injector.get(), injector.get()));
  }
}
