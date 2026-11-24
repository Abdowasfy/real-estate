import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:real_estate/feature/onboarding/data/model/onboarding_model.dart';
import 'package:real_estate/feature/onboarding/presentation/widgets/appbar_onboarding.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController pageController = PageController();

  int currentPage = 0;

  void nextPage() {
    if (currentPage < onboardingData.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Navigate to Login Screen
    }
  }

  void previousPage() {
    if (currentPage > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void skipOnboarding() {
    pageController.animateToPage(
      onboardingData.length - 1,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE8E8E8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppbarOnboarding(),

              const Gap(25),

              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  itemCount: onboardingData.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    final item = onboardingData[index];

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title
                        Text(
                          item.title,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff17234B),
                          ),
                        ),

                        const Gap(12),

                        // Description
                        Text(
                          item.description,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                            height: 1.5,
                          ),
                        ),

                        const Gap(20),

                        // Image
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Image.asset(
                                  item.image,
                                  fit: BoxFit.cover,
                                ),

                                // Page Indicator
                                Positioned(
                                  bottom: 85,
                                  left: 0,
                                  right: 0,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                      onboardingData.length,
                                      (indicatorIndex) {
                                        return AnimatedContainer(
                                          duration: const Duration(
                                            milliseconds: 300,
                                          ),
                                          margin: const EdgeInsets.symmetric(
                                            horizontal: 3,
                                          ),
                                          height: 4,
                                          width: currentPage == indicatorIndex
                                              ? 25
                                              : 10,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),

                                // Navigation Buttons
                                Positioned(
                                  bottom: 18,
                                  left: 12,
                                  right: 12,
                                  child: Row(
                                    children: [
                                      if (currentPage > 0)
                                        CircleAvatar(
                                          radius: 21,
                                          backgroundColor: Colors.white,
                                          child: IconButton(
                                            onPressed: previousPage,
                                            icon: const Icon(
                                              Icons.arrow_back,
                                              color: Color(0xff17234B),
                                              size: 18,
                                            ),
                                          ),
                                        ),

                                      const Spacer(),

                                      SizedBox(
                                        width: 130,
                                        height: 45,
                                        child: ElevatedButton(
                                          onPressed: nextPage,
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xff8DC63F),
                                            foregroundColor: Colors.white,
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                          ),
                                          child: Text(
                                            currentPage ==
                                                    onboardingData.length - 1
                                                ? 'Get Started'
                                                : 'Next',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}