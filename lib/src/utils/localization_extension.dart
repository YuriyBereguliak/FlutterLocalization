part of '../core/localization.dart';

extension HotDocLocalizationExtension on BuildContext {
  String translate(String key) => AppLocalization.translate(this, key);
}
