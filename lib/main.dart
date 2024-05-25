import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:food_test/core/const/theme_app.dart';
import 'package:food_test/features/home/presentation/page/home_page.dart';

void main() {
  runApp(SafeArea(
    child: MaterialApp(
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
        home: const HomePage()),
  ));
}
