import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:food_test/core/feature/favoritie/data/config/favorite.dart';
import 'package:food_test/core/feature/favoritie/data/data_source/favorite_data_source.dart';
import 'package:food_test/features/home/data/config/response/food_data/food_data.dart';
import 'package:food_test/features/home/data/data_source/home_data_source.dart';
import 'package:isar/isar.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:util_commons/utils/network/apiconnect.dart';
import 'package:util_commons/utils/network/config/response/response.dart';

import 'package:path/path.dart' as path;
import 'package:util_commons/utils/network/config/response/response_general.dart';

import 'favorite_local_data_source_test.mocks.dart';

class MockQueryBuilder2 extends Mock
    implements QueryBuilder<Favorite, Favorite, QWhere> {}

@GenerateMocks([Isar, IsarCollection, QueryBuilder<Favorite, Favorite, QWhere>])
void main() {
  late MockIsar mockIsar;
  late FavoriteDataSource dataSource;
  late MockIsarCollection<Favorite> mockFavoriteCollection;
  late QueryBuilder<Favorite, Favorite, QWhere> mockQueryBuilder;
/*
  setUp(() {
    mockFavoriteCollection = MockIsarCollection<Favorite>();
    mockQueryBuilder = MockQueryBuilder2();
    mockIsar = MockIsar();
    dataSource = FavoriteDataSource(mockIsar);
  });
  group('HomeDataSource Tests', () {
    test('getFavorities returns data', () async {
      // Arrange
      when(mockIsar.favorites).thenReturn(mockFavoriteCollection);
      when(() => mockFavoriteCollection.where()).thenReturn(mockQueryBuilder);
      when(() => mockQueryBuilder.findAll()).thenAnswer((_) async => [
            Favorite()..identifier = 'favorite1',
            Favorite()..identifier = 'favorite2',
          ]);

      // Act
      final result = await dataSource.getFavorities();

      // Assert
      expect(result, isNotNull);
      expect(result.length, 1);
    });
  });*/
}
