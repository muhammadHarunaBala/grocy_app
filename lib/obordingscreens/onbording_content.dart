class OnboardingContents {
  final String title;
  final String image;


  OnboardingContents({
    required this.title,
    required this.image,

  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Now Easier to Make Online Payments",
    image: "assets/s1.png",
  ),
  OnboardingContents(
    title: "Secure Transactions & Reliable Anytime",
    image: "assets/s2.png",

  ),

];