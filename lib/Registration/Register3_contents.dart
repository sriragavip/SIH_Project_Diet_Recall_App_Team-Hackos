class Register3Contents {
  final String title;
  final String image;
  final String desc;

  Register3Contents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<Register3Contents> contents = [
  Register3Contents(
    title: "What is your goal ?",
    image: "assets/images/Register3_image1.png",
    desc: "I have a low amount of body fat and need / want to build more muscle",
  ),
  Register3Contents(
    title: "What is your goal ?",
    image: "assets/images/Register3_image2.png",
    desc: "I’m “skinny fat”. I want to add learn muscle in the right way",
  ),
  Register3Contents(
    title: "What is your goal ?",
    image: "assets/images/Register3_image3.png",
    desc: "I have over 20 lbs to lose. I want to drop all this fat and gain muscle mass",
  ),
];
