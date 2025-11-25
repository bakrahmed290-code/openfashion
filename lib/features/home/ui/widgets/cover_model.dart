class CoverModel {
  final String image;
  final String title;
  CoverModel({required this.image, required this.title});

  static List<CoverModel> getCovers() {
    return [
      CoverModel(image: 'assets/images/cover3.png', title: 'Black collection'),
      CoverModel(image: 'assets/images/cover2.png', title: 'HAE BY HAEKIM'),
      CoverModel(image: 'assets/images/image 20.png', title: 'Collection'),
    ];
  }
}
