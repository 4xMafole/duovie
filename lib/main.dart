import 'package:duovie/Locale/locale.dart';
import 'package:duovie/Theme/style.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:get/get.dart';

import 'BottomNavigation/MyProfile/views/language_page.dart';
import 'Locale/language_service.dart';
import 'Routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    Phoenix(
      child: Duovie(),
    ),
  );
}

class Duovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'),
        const Locale('ar'),
        const Locale('id'),
        const Locale('fr'),
        const Locale('pt'),
        const Locale('es'),
        const Locale('it'),
        const Locale('sw'),
        const Locale('tr'),
      ],
      theme: appTheme,
      locale: LanguageService.locale,
      fallbackLocale: LanguageService.fallbackLocale,
      translations: LanguageService(),
      home: ChangeLanguagePage(),
      routes: PageRoutes().routes(),
    );
  }
}
