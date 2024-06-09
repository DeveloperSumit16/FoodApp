class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
    description: "Pick your food item from our menu\n                More than 35 times",
    image: 'images/screen1.png',
    title: "Select from Our Best menu",
  ),
  UnboardingContent(
    description:
        "You can pay Cash on Delivery and\n  Card payments is also available",
    image: 'images/screen2.png',
    title: "Easy and Online Payments",
  ),
  UnboardingContent(
    description: "Deliver your Food at\n       your Doorstep",
    image: 'images/screen3.png',
    title: 'Delivery at your Doorstep',
  ),
];
