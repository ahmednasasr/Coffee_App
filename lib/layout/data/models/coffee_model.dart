class Coffee {
  final String name;
  final String description;
  final double price;
  final String image;
  final double rating;
  final String desc; // New property

  Coffee({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.rating,
    required this.desc,
  });
}

List<Coffee> coffeeList = [
  Coffee(
    name: 'Caffe Mocha',
    description: 'Deep Foam',
    price: 4.53,
    image: 'assets/images/coffee.png',
    rating: 4.8,
    desc: 'A rich and creamy coffee with chocolate flavor.',
  ),
  Coffee(
    name: 'Flat White',
    description: 'Espresso',
    price: 3.53,
    image: 'assets/images/Image & Rating (1).png',
    rating: 4.5,
    desc: 'A smooth espresso-based drink with steamed milk.',
  ),
  Coffee(
    name: 'Americano',
    description: 'Strong Taste',
    price: 3.00,
    image: 'assets/images/e.png',
    rating: 4.6,
    desc: 'A bold coffee made by diluting espresso with hot water.',
  ),
  Coffee(
    name: 'Latte',
    description: 'Smooth Taste',
    price: 3.80,
    image: 'assets/images/w.png',
    rating: 4.7,
    desc: 'A creamy coffee with steamed milk and light foam.',
  ),
];
