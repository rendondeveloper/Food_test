import 'package:food_test/core/feature/favoritie/data/config/favorite.dart';
import 'package:isar/isar.dart';

class FavoriteDataSource {
  final Isar _isar;

  FavoriteDataSource(this._isar);
  Future<List<Favorite>> getFavorities() async {
    final data = await _isar.favorites.where().findAll();
    return data;
  }

  Future<bool> putFavorite(Favorite favorite) async {
    final result = await _isar.writeTxn(() async {
      return await _isar.favorites.put(favorite);
    });
    return result != 0;
  }

  Future<bool> deleteFavorIte(Favorite favorite) async {
    final result = await _isar.writeTxn(() async {
      return await _isar.favorites.delete(favorite.id);
    });
    return result;
  }
}
