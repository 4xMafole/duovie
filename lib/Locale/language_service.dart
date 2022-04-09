import 'package:duovie/Locale/Languages/arabic.dart';
import 'package:duovie/Locale/Languages/english.dart';
import 'package:duovie/Locale/Languages/french.dart';
import 'package:duovie/Locale/Languages/indonesian.dart';
import 'package:duovie/Locale/Languages/italian.dart';
import 'package:duovie/Locale/Languages/portuguese.dart';
import 'package:duovie/Locale/Languages/spanish.dart';
import 'package:duovie/Locale/Languages/swahili.dart';
import 'package:duovie/Locale/Languages/turkish.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageService extends Translations {
  // Default locale
  static final locale = Locale('en', 'US');

  // fallbackLocale saves the day when the locale gets in trouble
  static final fallbackLocale = Locale('fr');

  static final langs = [
    'English',
    'عربى',
    'français',
    'bahasa Indonesia',
    'português',
    'Español',
    'italiano',
    'Türk',
    'Kiswahili',
  ];

  static final locales = [
    Locale('en'),
    Locale('ar'),
    Locale('fr'),
    Locale('id'),
    Locale('pt'),
    Locale('es'),
    Locale('it'),
    Locale('tr'),
    Locale('sw'),
  ];

  @override
  Map<String, Map<String, String>> get keys => {
        'en': english(),
        'ar': arabic(),
        'fr': french(),
        'id': indonesian(),
        'pt': portuguese(),
        'es': spanish(),
        'it': italian(),
        'tr': turkish(),
        'sw': swahili(),
      };

  void changeLocale(String lang) {
    final locale = _getLocaleFromLanguage(lang);
    Get.updateLocale(locale!);
  }

  Locale? _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale;
  }
}
