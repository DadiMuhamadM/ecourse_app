class DataCourse {
  String image;
  String name;
  String time;
  String rating;
  String price;
  String instructor;
  String description;

  DataCourse(
      {required this.image,
      required this.name,
      required this.time,
      required this.rating,
      required this.price,
      required this.instructor,
      required this.description});
}

List<DataCourse> dataCourse() {
  return [
    DataCourse(
      image: 'assets/card1.png',
      name: 'Communication Skills: Use a Teleprompter Effectively',
      time: '4h 30min',
      rating: '4.8 (2,656)',
      price: '\$59.99',
      instructor: 'Winston Mccormick',
      description:
          'Communication Skills for the Teleprompter. Imagine that you are giving a speech in front of thousands of people, and you are reading the Teleprompter as seamlessly and flawlessly as Ronald Reagan or Bill Clinton ever did. Wouldnt it be nice to know that you can deliver read more...',
    ),
    DataCourse(
      image: 'assets/card2.png',
      name: 'Programming: Create Apps with Flutter',
      time: '8h 30min',
      rating: '4.9 (2,659)',
      price: '\$67.99',
      instructor: 'Dadi Muhamad M',
      description:
          'Communication Skills for the Teleprompter. Imagine that you are giving a speech in front of thousands of people, and you are reading the Teleprompter as seamlessly and flawlessly as Ronald Reagan or Bill Clinton ever did. Wouldnt it be nice to know that you can deliver read more...',
    ),
    DataCourse(
      image: 'assets/card3.png',
      name: 'Design Skills: Use figma in 2022',
      time: '6h 30min',
      rating: '4.8 (2,656)',
      price: '\$48.99',
      instructor: 'Eva Febiola',
      description:
          'Communication Skills for the Teleprompter. Imagine that you are giving a speech in front of thousands of people, and you are reading the Teleprompter as seamlessly and flawlessly as Ronald Reagan or Bill Clinton ever did. Wouldnt it be nice to know that you can deliver read more...',
    ),
  ];
}
