import 'package:food_test/core/feature/favoritie/data/config/favorite.dart';
import 'package:food_test/core/feature/favoritie/data/data_source/favorite_data_source.dart';

class FavoriteRepository {
  final FavoriteDataSource _dataSource;

  FavoriteRepository(this._dataSource);

  Future<List<Favorite>> getFavorities() {
    return _dataSource.getFavorities();
  }

  Future<bool> deleteFavorities(Favorite favorite) {
    return _dataSource.deleteFavorIte(favorite);
  }

  Future<bool> putFavorities(Favorite favorite) {
    return _dataSource.putFavorite(favorite);
  }
}
