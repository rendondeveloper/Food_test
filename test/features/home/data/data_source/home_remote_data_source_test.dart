import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:food_test/features/home/data/config/response/food_data/food_data.dart';
import 'package:food_test/features/home/data/data_source/home_data_source.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:util_commons/utils/network/apiconnect.dart';
import 'package:util_commons/utils/network/config/response/response.dart';

import 'package:path/path.dart' as path;
import 'package:util_commons/utils/network/config/response/response_general.dart';

import 'home_remote_data_source_test.mocks.dart';

@GenerateMocks([ApiConnect])
void main() {
  late MockApiConnect mockApiConnect;
  late HomeDataSource dataSource;

  setUp(() {
    mockApiConnect = MockApiConnect();
    dataSource = HomeDataSource(mockApiConnect);
  });

  Future<Map<String, dynamic>> loadJson(String fileName) async {
    final dir = Directory.current.path;
    final filePath = path.join(dir, 'test_resources', fileName);
    final file = File(filePath);
    final jsonString = await file.readAsString();
    return jsonDecode(jsonString);
  }

  group('HomeDataSource Tests', () {
    test('getHomeData returns data when the API call is successful', () async {
      final jsonResponse = await loadJson('meal_home.json');

      var responseMock = ResponseBase(
        isSuccess: true,
        exception: null,
      )..setMapValueJson(jsonResponse);

      when(mockApiConnect.executeGet(path: anyNamed('path'))).thenAnswer(
        (_) async => responseMock,
      );

      final result = await dataSource.getHomeData();

      expect(result.error, null);
      expect(result.success, isA<FoodData>());
      expect(result.success!.meals!.length, 10);
    });

    test('getHomeData returns data when the API call is successful empty',
        () async {
      final jsonResponse = await loadJson('meal_home_empty.json');

      var responseMock = ResponseBase(
        isSuccess: true,
        exception: null,
      )..setMapValueJson(jsonResponse);

      when(mockApiConnect.executeGet(path: anyNamed('path'))).thenAnswer(
        (_) async => responseMock,
      );

      final result = await dataSource.getHomeData();

      expect(result.error, null);
      expect(result.success, isA<FoodData>());
      expect(result.success!.meals!.isEmpty, true);
    });

    test('getHomeData returns data when the API call is error', () async {
      final jsonResponse = await loadJson('meal_home_empty.json');

      var responseMock = ResponseBase(
        isSuccess: false,
        exception: Exception(),
      )..setMapValueJson(jsonResponse);

      when(mockApiConnect.executeGet(path: anyNamed('path'))).thenAnswer(
        (_) async => responseMock,
      );

      final result = await dataSource.getHomeData();

      expect(result.success, null);
      expect(result.error, isA<ErrorGeneral>());
      expect(result.error!.error, isA<Exception>());
    });
  });
}
