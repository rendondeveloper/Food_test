import 'package:food_test/core/feature/favoritie/data/data_source/favorite_data_source.dart';
import 'package:food_test/core/feature/favoritie/data/repository/favorite_repository.dart';
import 'package:food_test/core/feature/favoritie/domain/use_cases/delete_favorities_use_case.dart';
import 'package:food_test/core/feature/favoritie/domain/use_cases/get_by_Identifier_favorities_use_case.dart';
import 'package:food_test/core/feature/favoritie/domain/use_cases/put_favorities_use_case.dart';
import 'package:injector/injector.dart';

class FavoriteInjection {
  void register() {
    final injector = Injector.appInstance;
    Injector.appInstance
      ..registerDependency(() => FavoriteDataSource())
      ..registerDependency(
          () => FavoriteRepository(injector.get<FavoriteDataSource>()))
      ..registerDependency(
          () => GetByIdentifierFavoritiesUseCases(injector.get()))
      ..registerDependency(
          () => DeleteFavoritiesUseCases(injector.get(), injector.get()))
      ..registerDependency(() => PutFavoritiesUseCases(injector.get()));
  }
}
