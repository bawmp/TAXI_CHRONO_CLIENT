import '../../core/infrastructure/common_import.dart';
import 'widgets/page_indicator.dart';
import 'widgets/onboarding_page.dart';

@RoutePage()
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _controller;
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        fit: StackFit.expand,
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: [
              OnboardingPage(
                imageUrl: 'assets/images/page1.png',
                title: context.locale!.onboardingScreenPageOneTitleLabel,
                description:
                    context.locale!.onboardingScreenPageOneDescriptionLabel,
              ),
              OnboardingPage(
                imageUrl: 'assets/images/page2.png',
                title: context.locale!.onboardingScreenPageTwoTitleLabel,
                description:
                    context.locale!.onboardingScreenPageTwoDescriptionLabel,
              ),
              OnboardingPage(
                imageUrl: 'assets/images/page3.png',
                title: context.locale!.onboardingScreenPageThreeTitleLabel,
                description:
                    context.locale!.onboardingScreenPageThreeDescriptionLabel,
              ),
            ],
          ),
          if (_currentIndex == 2)
            Positioned(
              bottom: 50,
              left: 0,
              right: 0,
              child: Center(
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width / 2,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      context.locale!.onboardingScreenPageGetStartedButtonLabel
                          .toUpperCase(),
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppColors.whiteColor,
                              ),
                    ),
                  ),
                ),
              ),
            ).animate().scale(delay: 50.milliseconds).fadeIn(),
          Positioned(
            bottom: 24,
            left: 0,
            right: 0,
            child: PageIndicators(
              index: _currentIndex,
              currentIndex: _currentIndex,
            ),
          )
        ],
      ),
    );
  }
}
