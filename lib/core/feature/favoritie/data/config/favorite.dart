import 'package:isar/isar.dart';

part 'favorite.g.dart';

@collection
class Favorite {
  Id id = Isar.autoIncrement;
  String? identifier;
}
