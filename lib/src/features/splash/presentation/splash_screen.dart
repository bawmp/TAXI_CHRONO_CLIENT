import '../../core/infrastructure/common_import.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Spacer(),
          Image.asset('assets/icons/logo.png'),
          gapH8,
          Text(
            'Taxi Chrono',
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(fontSize: 30),
          ),
          const Spacer(),
          Image.asset(
            'assets/images/bg.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          )
        ],
      ),
    );
  }
}
