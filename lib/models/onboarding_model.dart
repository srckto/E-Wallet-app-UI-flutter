class _OnboardingModel {
  final String title;
  final String subTitle;
  final String imagePath;
  _OnboardingModel({
    required this.title,
    required this.subTitle,
    required this.imagePath,
  });
}

final List<_OnboardingModel> onboardingModel = [
  _OnboardingModel(
    title: 'Add all accounts & manage',
    subTitle: 'You can add all accounts in one place and use it to send and request.',
    imagePath: 'assets/images/illustration-1.png',
  ),

  _OnboardingModel(
    title: 'Track your activity',
    subTitle: 'You can track your income, expenses activities and all statistics.',
    imagePath: 'assets/images/illustration-2.png',
  ),

  _OnboardingModel(
    title: 'Send & request payments',
    subTitle: 'You can send or recieve any payments from yous accounts.',
    imagePath: 'assets/images/Wallet-rafiki.png',
  ),
];
