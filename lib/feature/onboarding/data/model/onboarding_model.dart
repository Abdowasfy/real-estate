class OnboardingModel {
  final String title;
  final String description;
  final String image;

  const OnboardingModel({
    required this.title,
    required this.description,
    required this.image,
  });
}

const List<OnboardingModel> onboardingData = [
  OnboardingModel(
    title: 'Find best place to stay in good price',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    image: 'assets/images/onboard1.png',
  ),
  OnboardingModel(
    title: 'Fast sell your property in just one click',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    image: 'assets/images/onboard2.png',
  ),
  OnboardingModel(
    title: 'Find perfect choice for your future house',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
    image: 'assets/images/onboard3.png',
  ),
];