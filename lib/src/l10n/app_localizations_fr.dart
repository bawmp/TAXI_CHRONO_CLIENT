import 'app_localizations.dart';

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Taxi Chrono';

  @override
  String get onboardingScreenPageOneTitleLabel => 'Demande de Taxi';

  @override
  String get onboardingScreenPageOneDescriptionLabel => 'Demander à être pris en charge par un\ntaxi proche de vous';

  @override
  String get onboardingScreenPageTwoTitleLabel => 'Confirmez Votre Conducteur';

  @override
  String get onboardingScreenPageTwoDescriptionLabel => 'Un vaste réseau de conducteurs vous aide à trouver\nun véhicule confortable, sûr et bon marché.';

  @override
  String get onboardingScreenPageThreeTitleLabel => 'Suivez votre parcours';

  @override
  String get onboardingScreenPageThreeDescriptionLabel => 'Connaître son chauffeur à l\'avance et pouvoir\nvisualiser sa position en temps réel\nsur la carte';

  @override
  String get onboardingScreenPageGetStartedButtonLabel => 'Commencez!';
}
