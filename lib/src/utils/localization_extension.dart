part of '../core/localization.dart';

extension LocalizationExtension on BuildContext {
  String translate(String key) => AppLocalization.translate(this, key);
}
