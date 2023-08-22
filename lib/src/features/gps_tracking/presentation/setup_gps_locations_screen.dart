import 'dart:developer';

import 'package:taxichrono/src/features/core/extension/localization_extension.dart';
import 'package:taxichrono/src/features/core/extension/media_query.dart';
import 'package:taxichrono/src/features/gps_tracking/infrastructure/external_services/geolocation_service.dart';

import '../../core/infrastructure/common_import.dart';

@RoutePage()
class SetupGPSLocationsScreen extends StatelessWidget {
  const SetupGPSLocationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: context.proportionnalHeight(130),
            ),
            Expanded(
                child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Image.asset(
                      'assets/images/gps-screen.png',
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                    SizedBox(
                      height: context.proportionnalHeight(82),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36),
                      child: Column(
                        children: [
                          Text(
                            context.locale.setupGpsLocationsScreenTitle,
                            style: Theme.of(context).textTheme.displayLarge,
                          ),
                          SizedBox(
                            height: context.proportionnalHeight(17),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              context.locale.setupGpsLocationsScreenSubtitle,
                              style: Theme.of(context).textTheme.titleLarge,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: context.proportionnalHeight(42),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 4.0),
                            child: OutlinedButton.icon(
                                style: OutlinedButton.styleFrom(),
                                onPressed: () async {
                                  final res = await GeolocationService
                                      .determinePosition();

                                  res.fold((l) {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (_) => Dialog(
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  children: [
                                                    ElevatedButton(
                                                        onPressed: () {
                                                          GeolocationService
                                                              .openSettings();
                                                        },
                                                        child: const Text(
                                                            'Open settings'))
                                                  ],
                                                ),
                                              ),
                                            ));
                                  }, (r) {
                                    log(('${r.longitude}_${r.latitude}'));
                                  });
                                },
                                icon: Image.asset(
                                    "assets/icons/gps-direction.png"),
                                label: Text(
                                  context
                                      .locale.setupGpsLocationsScreenTextButton,
                                )),
                          ),
                          SizedBox(
                            height: context.proportionnalHeight(54),
                          ),
                          Center(
                            child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  context
                                      .locale.setupGpsLocationsScreenTextButton,
                                  style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.error,
                                      decoration: TextDecoration.underline),
                                )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
