import 'package:flutter/material.dart';

class AppSupportedLocales {
  /// If received locale is supported
  /// Otherwise, return first supported language
  Locale localeResolutionCallback(
    Locale locale,
    Iterable<Locale> supportedLocales,
  ) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode &&
          supportedLocale.countryCode == locale.countryCode) {
        return supportedLocale;
      }
    }
    return supportedLocales.first;
  }
}
