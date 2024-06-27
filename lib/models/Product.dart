class Product {
  final String title;
  final String? description;
  final String image;
  final String price;
  String currency = 'د.إ';
  
  Product({required this.title, String? this.description, required this.image, required this.price, this.currency = 'د.إ'});
}