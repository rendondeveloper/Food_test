import 'package:food_test/core/feature/favoritie/data/repository/favorite_repository.dart';
import 'package:food_test/core/feature/favoritie/domain/use_cases/get_by_Identifier_favorities_use_case.dart';

class DeleteFavoritiesUseCases {
  final FavoriteRepository _repository;
  final GetByIdentifierFavoritiesUseCases _getByIdentifierFavoritiesUseCases;

  DeleteFavoritiesUseCases(
      this._repository, this._getByIdentifierFavoritiesUseCases);

  Future<bool> invoke(String identifier) async {
    final item = await _getByIdentifierFavoritiesUseCases.invoke(identifier);
    return item != null ? await _repository.deleteFavorities(item) : false;
  }
}
