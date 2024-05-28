import 'package:food_test/core/feature/favoritie/data/config/favorite.dart';
import 'package:food_test/core/feature/favoritie/data/repository/favorite_repository.dart';

class GetByIdentifierFavoritiesUseCases {
  final FavoriteRepository _repository;

  GetByIdentifierFavoritiesUseCases(this._repository);

  Future<Favorite?> invoke(String identifier) async {
    final results = await _repository.getFavorities();
    return results.isNotEmpty ? results.where((element) => element.identifier == identifier).firstOrNull : null;
  }
}
