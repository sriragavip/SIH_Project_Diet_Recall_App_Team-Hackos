class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Track Your Goal",
    image: "assets/images/Onboarding_image1.png",
    desc:
        "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals.",
  ),
  OnboardingContents(
    title: "Get Burn",
    image: "assets/images/Onboarding_image2.png",
    desc:
        "Let’s keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
  ),
  OnboardingContents(
    title: "Eat Well",
    image: "assets/images/Onboarding_image3.png",
    desc:
        "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun.",
  ),
];
