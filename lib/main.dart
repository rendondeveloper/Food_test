import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:food_test/core/const/theme_app.dart';
import 'package:food_test/core/di/general_injection.dart';
import 'package:food_test/core/feature/favoritie/framework/di/favorite_injection.dart';
import 'package:food_test/features/detail/framework/di/detail_injection.dart';
import 'package:food_test/features/detail/framework/presentation/bloc/detail_bloc.dart';
import 'package:food_test/features/home/framework/di/home_injection.dart';
import 'package:food_test/features/home/framework/presentation/bloc/home_bloc.dart';
import 'package:food_test/features/search_food/framework/bloc/search_bloc.dart';
import 'package:food_test/features/search_food/framework/di/search_injection.dart';
import 'package:go_router/go_router.dart';
import 'package:injector/injector.dart';

void main() {
  GeneralInjection().register();
  HomeInjection().register();
  DetailInjection().register();
  SearchInjection().register();
  FavoriteInjection().register();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<HomeBloc>(
        create: (BuildContext context) => Injector.appInstance.get<HomeBloc>(),
      ),
      BlocProvider<DetailBloc>(
        create: (BuildContext context) =>
            Injector.appInstance.get<DetailBloc>(),
      ),
      BlocProvider<SearchBloc>(
        create: (BuildContext context) =>
            Injector.appInstance.get<SearchBloc>(),
      ),   
    ],
    child: SafeArea(
      child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('es', ''), // Spanish, no country code
            Locale('en', ''), // Spanish, no country code
          ],
          theme: themeApp,
          themeMode: ThemeMode.light,
          routerConfig: Injector.appInstance.get<GoRouter>()),
    ),
  ));
}
