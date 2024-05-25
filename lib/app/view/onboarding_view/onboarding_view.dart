import 'package:alisatiyor/app/routes/app_routes.dart';
import 'package:alisatiyor/app/view/onboarding_view/dot_indicator.dart';
import 'package:alisatiyor/app/view/onboarding_view/onboarding_body.dart';
import 'package:alisatiyor/core/duration/app_duration.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});
  static const routeName = '/onboarding';

  @override
  OnboardingViewState createState() => OnboardingViewState();
}

class OnboardingViewState extends State<OnboardingView> {
  final ValueNotifier<int> _currentPage = ValueNotifier<int>(0);
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
        valueListenable: _currentPage,
        builder: (context, value, child) {
          return Stack(
            children: [
              AnimatedContainer(
                  duration: AppDuration.defaultDuration,
                  color: value == 2 || value == 0
                      ? Theme.of(context).secondaryHeaderColor
                      : Colors.white,
                  child: child),
              Scaffold(
                backgroundColor: Colors.transparent,
                floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    if (value == 2) {
                      context.router.replace(const HomeRoute());
                    } else {
                      _pageController.animateToPage(value + 1,
                          duration: AppDuration.defaultDuration,
                          curve: Curves.easeIn);
                    }
                  },
                  child: const Icon(Icons.arrow_forward),
                ),
                body: SafeArea(
                  child: Stack(
                    children: [
                      PageView(
                        controller: _pageController,
                        onPageChanged: (int page) {
                          _currentPage.value = page;
                        },
                        children: const <Widget>[
                          OnboardingPage(
                              imagePath: 'assets/svg/ic_welcome.svg',
                              title: 'Hoş Geldiniz',
                              description:
                                  'Uygulamamızda nesnelerin fotoğrafını çekerek boyutlarını saniyeler içerisinde öğrenin.'),
                          OnboardingPage(
                              imagePath: 'assets/svg/ic_secure_data.svg',
                              title: 'Verileriniz Güvende',
                              description:
                                  'Uygulamamızda verileriniz sadece izin verdiğiniz işlemler için kullanılır.'),
                          OnboardingPage(
                              imagePath: 'assets/svg/ic_lets_start.svg',
                              title: 'Hemen Başlayın',
                              description:
                                  'Ana sayfadaki kamera ikonuna tıklayarak uygulamayı kullanmaya başlayın.'),
                        ],
                      ),
                      if (value != 2)
                        Align(
                            alignment: Alignment.topRight,
                            child: TextButton(
                                onPressed: () {
                                  _pageController.animateToPage(2,
                                      duration: AppDuration.defaultDuration,
                                      curve: Curves.easeIn);
                                },
                                child: const Text('Atla'))),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              3,
                              (index) => Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: DotIndicator(
                                  isActive: index == value,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        });
  }
}
