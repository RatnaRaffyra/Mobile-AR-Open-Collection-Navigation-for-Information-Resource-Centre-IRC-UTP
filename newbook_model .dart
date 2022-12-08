// ignore: file_names
class NewBookModel {
  String image;

  NewBookModel(this.image);
}

List<NewBookModel> newbooks =
    newBookData.map((item) => NewBookModel(item['image'] as String)).toList();

var newBookData = [
{"image": "assets/images/img_newbook1.jpeg"},
{"image": "assets/images/img_newbook2.jpeg"},
{"image": "assets/images/img_newbook3.jpeg"},
{"image": "assets/images/img_newbook4.jpeg"},
];