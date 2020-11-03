import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part '../utils/localization_extension.dart';

class AppLocalization {
  static String translate(BuildContext context, String key) =>
      Localizations.of<AppLocalization>(context, AppLocalization)
          ._translateByKey(key);

  final Locale locale;
  Map<String, String> _localizedStrings;

  AppLocalization(this.locale);

  //region HotDocLocalization
  Future<bool> load(String pathToFolder) async {
    /// Format path to folder with translations
    var translationFile = '$pathToFolder/${locale.languageCode}.json';

    /// Load data from json file
    String jsonString = await rootBundle.loadString(
      translationFile,
    );

    Map<String, dynamic> jsonMap = json.decode(jsonString);

    _localizedStrings = jsonMap.map(
      (key, value) {
        return MapEntry(
          key,
          value.toString(),
        );
      },
    );

    return true;
  }
  //endregion

  //Utility API
  String _translateByKey(String key) => _localizedStrings[key];
  //endregion
}
