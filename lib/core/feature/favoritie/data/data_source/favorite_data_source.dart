import 'package:food_test/core/feature/favoritie/data/config/favorite.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class FavoriteDataSource {
  Isar? _isar;

  FavoriteDataSource();

  init() async {
    final isOpen = Isar.getInstance()?.isOpen ?? false;
    if (isOpen) {
      _isar =  Isar.getInstance();
    } else {
      if (_isar == null) {
        final dir = await getApplicationDocumentsDirectory();
        _isar = await Isar.open(
          [FavoriteSchema],
          directory: dir.path,
        );
      }
    }
  }

  Future<List<Favorite>> getFavorities() async {
    await init();
    final data = await _isar!.favorites.where().findAll();
    return data;
  }

  Future<bool> putFavorite(Favorite favorite) async {
    await init();
    final result = await _isar!.writeTxn(() async {
      return await _isar!.favorites.put(favorite);
    });
    return result != 0;
  }

  Future<bool> deleteFavorIte(Favorite favorite) async {
    await init();
    final result = await _isar!.writeTxn(() async {
      return await _isar!.favorites.delete(favorite.id);
    });
    return result;
  }
}
