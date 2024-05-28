import 'package:flutter/material.dart';
import 'package:food_test/core/const/configuration_api.dart';
import 'package:food_test/core/const/configuration_navigation_paths.dart';
import 'package:food_test/core/utils/country_converter.dart';
import 'package:food_test/features/detail/framework/presentation/page/detail_page.dart';
import 'package:food_test/features/home/framework/presentation/page/home_page.dart';
import 'package:go_router/go_router.dart';
import 'package:injector/injector.dart';
import 'package:util_commons/utils/network/apiconnect.dart';

class GeneralInjection {
  void register() {
    Injector.appInstance
      ..registerDependency<ApiConnect>(() {
        return ApiConnect(baseUrl);
      })
      ..registerDependency<CountryCodeConverter>(() {
        return CountryCodeConverter();
      })
      ..registerDependency<GoRouter>(() {
        return GoRouter(
          initialLocation: pathInitial,
          routes: [
            GoRoute(
                name: homePage,
                path: pathInitial,
                builder: (BuildContext context, GoRouterState state) {
                  return const HomePage();
                },
                routes: [
                  GoRoute(
                      name: detailPage,
                      path: detailPage,
                      builder: (BuildContext context, GoRouterState state) {
                        final extra = state.extra as Map<String?, String?>;
                        final identifier = extra[identifierTransport] ?? "";
                        final imageUrl = extra[imageUrlTransport] ?? "";
                        return DetailPage(
                            identifier: identifier, imageUrl: imageUrl);
                      }),
                ]),
          ],
        );
      });
  }
}
