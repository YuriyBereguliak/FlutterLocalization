import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

Iterable<LocalizationsDelegate<dynamic>> provideDelegates(
  List<Locale> locales,
  String pathToTranslations,
) {
  final List<String> languageCodes = locales.map(
    (locale) => locale.languageCode,
  );
  return [
    AppLocalizationDelegate(languageCodes, pathToTranslations),
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];
}
