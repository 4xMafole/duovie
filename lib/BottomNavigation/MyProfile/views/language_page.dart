import 'package:animation_wrappers/animation_wrappers.dart';
import 'package:flutter/material.dart';

import '../../../Locale/language_service.dart';
import '../../../Locale/locale.dart';
import '../../../Routes/routes.dart';

class ChangeLanguagePage extends StatefulWidget {
  @override
  _ChangeLanguagePageState createState() => _ChangeLanguagePageState();
}

class _ChangeLanguagePageState extends State<ChangeLanguagePage> {
  late LanguageService _languageService;
  String _selectedLanguage = "";

  @override
  void initState() {
    // TODO: implement initState
    _languageService = LanguageService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.changeLanguage!),
      ),
      body: FadedSlideAnimation(
        ListView.builder(
          itemCount: LanguageService.langs.length,
          itemBuilder: (context, index) => RadioListTile(
            onChanged: (dynamic value) async {
              setState(() {
                _selectedLanguage = LanguageService.langs[value];
                _languageService.changeLocale(LanguageService.langs[value]);
                Navigator.pushNamed(context, PageRoutes.bottomNavigation);
              });
            },
            groupValue: LanguageService.langs.indexOf(_selectedLanguage),
            value: index,
            title: Text(LanguageService.langs[index]),
          ),
        ),
        beginOffset: Offset(0, 0.3),
        endOffset: Offset(0, 0),
        slideCurve: Curves.linearToEaseOut,
      ),
    );
  }
}
