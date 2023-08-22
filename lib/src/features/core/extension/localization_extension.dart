import 'package:taxichrono/src/features/core/infrastructure/common_import.dart';

extension LocalizationExtension on BuildContext {
  AppLocalizations get locale => AppLocalizations.of(this);
}
