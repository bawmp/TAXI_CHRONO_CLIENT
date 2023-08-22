import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Taxi Chrono';

  @override
  String get onboardingScreenPageOneTitleLabel => 'Request Ride';

  @override
  String get onboardingScreenPageOneDescriptionLabel => 'Request a ride get picked up by a\nnearby community driver';

  @override
  String get onboardingScreenPageTwoTitleLabel => 'Confirm Your Driver';

  @override
  String get onboardingScreenPageTwoDescriptionLabel => 'Huge drivers network helps you find\ncomforable, safe and cheap ride';

  @override
  String get onboardingScreenPageThreeTitleLabel => 'Track your ride';

  @override
  String get onboardingScreenPageThreeDescriptionLabel => 'Know your driver in advance and be\nable to view current location in real time\non the map';

  @override
  String get onboardingScreenPageGetStartedButtonLabel => 'Get Started!';
}
