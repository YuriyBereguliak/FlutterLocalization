import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  final List<String> _supportedLanguageCode;
  final String _pathToTranslationFolder;

  const AppLocalizationDelegate(
    this._supportedLanguageCode,
    this._pathToTranslationFolder,
  );

  //region LocalizationsDelegate
  @override
  bool isSupported(Locale locale) {
    return _supportedLanguageCode.contains(locale.languageCode);
  }

  @override
  Future<AppLocalization> load(Locale locale) async {
    final AppLocalization localizations = new AppLocalization(locale);
    await localizations.load(_pathToTranslationFolder);
    return localizations;
  }

  @override
  bool shouldReload(AppLocalizationDelegate old) => false;
  //endregion
}
