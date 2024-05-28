import 'package:food_test/core/feature/favoritie/data/config/favorite.dart';
import 'package:food_test/core/feature/favoritie/data/repository/favorite_repository.dart';

class PutFavoritiesUseCases {
  final FavoriteRepository _repository;

  PutFavoritiesUseCases(this._repository);

  Future<bool> invoke(String identifier) =>
      _repository.putFavorities(Favorite()..identifier = identifier);
}
