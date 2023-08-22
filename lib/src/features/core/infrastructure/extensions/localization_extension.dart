import '../../../../l10n/app_localizations.dart';
import '../common_import.dart';

extension LocalizationExtension on BuildContext {
  AppLocalizations? get locale => AppLocalizations.of(this);
}
