import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension CustomContext on BuildContext {
  AppLocalizations get getStrings => AppLocalizations.of(this)!;
}
