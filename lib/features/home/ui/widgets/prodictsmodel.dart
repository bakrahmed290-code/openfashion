class Prodictsmodel {
  final String image;
  final String name;
  final double price;
  final String description;
  Prodictsmodel({
    required this.image,
    required this.name,
    required this.price,
    required this.description,
  });

  static List<Prodictsmodel> getProducts() {
    return [
      Prodictsmodel(
        image: 'assets/images/Rectangle 344.png',
        name: 'Elegant Dress',
        price: 59.99,
        description: 'reversible angora cardigan sweater.',
      ),
      Prodictsmodel(
        image: 'assets/images/Rectangle 344 (1).png',
        name: 'Casual Sneakers',
        price: 79.99,
        description: 'reversible angora cardigan sweater.',
      ),
      Prodictsmodel(
        image: 'assets/images/Rectangle 344 (2).png',
        name: 'Elegant Dress',
        price: 99.99,
        description: 'mnemonic for special occasions.',
      ),
      Prodictsmodel(
        image: 'assets/images/Rectangle 344 (3).png',
        name: 'Elegant Dress',
        price: 99.99,
        description: 'reversible angora cardigan sweater.',
      ),
      Prodictsmodel(
        image: 'assets/images/Rectangle 344 (4).png',
        name: 'Elegant Dress',
        price: 99.99,
        description: 'mnemonic for special occasions.',
      ),
      Prodictsmodel(
        image: 'assets/images/Rectangle 344 (5).png',
        name: 'Elegant Dress',
        price: 99.99,
        description: 'reversible angora cardigan sweater.',
      ),
    ];
  }
}
