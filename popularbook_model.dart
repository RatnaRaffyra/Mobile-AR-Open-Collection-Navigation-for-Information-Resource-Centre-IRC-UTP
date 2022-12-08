class PopularBookModel {
  String image;

  PopularBookModel(this.image);
}

List<PopularBookModel> popularsbooks =
    popularBookData.map((item) => PopularBookModel(item['image'] as String)).toList();

var popularBookData = [
{"image": "assets/images/img_popularbook1 .jpeg"},
{"image": "assets/images/img_popularbook2.jpeg"},
{"image": "assets/images/img_popularbook3.jpeg"},
{"image": "assets/images/img_popularbook4.jpeg"},
];