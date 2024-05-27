import 'package:food_test/features/detail/data/data_source/detail_data_source.dart';
import 'package:food_test/features/detail/data/repository/detail_repository.dart';
import 'package:food_test/features/detail/domain/use_cases/get_datail_use_cases.dart';
import 'package:food_test/features/detail/framework/presentation/bloc/detail_bloc.dart';
import 'package:food_test/features/detail/framework/presentation/bloc/mapper/meal_detail_to_detail.dart';
import 'package:injector/injector.dart';
import 'package:util_commons/utils/network/apiconnect.dart';

class DetailInjection {
  void register() {
    final injector = Injector.appInstance;
    Injector.appInstance
      ..registerDependency(() => DetailDataSource(injector.get<ApiConnect>()))
      ..registerDependency(
          () => DetailRepository(injector.get<DetailDataSource>()))
      ..registerDependency(() => MealDetailToDetail())
      ..registerDependency(() => GetDatailUseCases(injector.get()))
      ..registerDependency(() => DetailBloc(injector.get(), injector.get()));
  }
}
