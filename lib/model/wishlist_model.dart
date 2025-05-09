class WishlistModel {
  String name;
  String image;
  String price;
  String description;
  String reviews;

  WishlistModel({
    required this.name,
    required this.image,
    required this.price,
    required this.description,
    required this.reviews,
  });
}

List<WishlistModel> wishlistItems = [
  WishlistModel(
    name: 'Black Winter',
    image: 'assets/images/black.png',
    price: '500',
    description: 'Autumn and winter casual wear',
    reviews: '6000',
  ),
  WishlistModel(
    name: 'Mens Starry',
    image: 'assets/images/t-shirt.png',
    price: '400',
    description: 'Autumn casual wear',
    reviews: '63000',
  ),
  WishlistModel(
    name: 'Black Dress',
    image: 'assets/images/blackd.png',
    price: '5000',
    description: 'Solid black dress for women',
    reviews: '69000',
  ),
  WishlistModel(
    name: 'Pink Embroidery',
    image: 'assets/images/pinkd.png',
    price: '8500',
    description: 'Pink Roses, Autumn and winter casual wear',
    reviews: '65000',
  ),
  WishlistModel(
    name: 'Flare Dress',
    image: 'assets/images/brown-dress.png',
    price: '2800',
    description: 'Dust orange and black, Autumn and winter casual wear',
    reviews: '76000',
  ),
  WishlistModel(
    name: 'denim dress',
    image: 'assets/images/blue.png',
    price: '9800',
    description: 'Blue cotton dress ,Autumn and winter casual wear',
    reviews: '98000',
  ),
  WishlistModel(
    name: 'Jordan Stay',
    image: 'assets/images/jogar.png',
    price: '59800',
    description: 'The Classic Jordan, Autumn and winter casual wear',
    reviews: '45000',
  ),
  WishlistModel(
    name: 'Realme 7',
    image: 'assets/images/mobile.png',
    price: '50000',
    description: '6 GB RAM, 128 GB ROM',
    reviews: '6000',
  ),
  WishlistModel(
    name: 'Sony PS4',
    image: 'assets/images/game.png',
    price: '5200',
    description: 'Sony PS4 console',
    reviews: '9000',
  ),
  WishlistModel(
    name: 'Black Jacket',
    image: 'assets/images/jacket.png',
    price: '5900',
    description: 'This is warm and comfortable',
    reviews: '4000',
  ),
  WishlistModel(
    name: 'D7200 Digital Camera',
    image: 'assets/images/camera.png',
    price: '5500',
    description: 'D7200 Digital Camera',
    reviews: '96000',
  ),
  WishlistModel(
    name: 'Men and Boys',
    image: 'assets/images/boats.png',
    price: '5700',
    description: 'Autumn and winter casual wear',
    reviews: '62000',
  ),
  WishlistModel(
    name: 'Muscle Blazer',
    image: 'assets/images/game2.png',
    price: '9500',
    description: 'Nutritional supplement',
    reviews: '46000',
  ),
  WishlistModel(
    name: 'Hot Chocolate',
    image: 'assets/images/choco.png',
    price: '500',
    description: 'Autumn and winter casual wear',
    reviews: '96000',
  ),
];
