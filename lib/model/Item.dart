import 'package:meta/meta.dart';

class Item {
  int id;
  String name;
  String category;
  String releaseDate;
  String releaseDateDesc;
  String directors;
  String runtime;
  String desc;
  double rating;
  String imageUrl;
  String bannerUrl;
  String trailerImg1;
  String trailerImg2;
  String trailerImg3;
  String price;
  String priceDiscount;
  String discount;
  dynamic color;
  String size;

  Item({
    @required this.id,
    @required this.name,
    @required this.category,
    @required this.directors,
    @required this.releaseDate,
    @required this.releaseDateDesc,
    @required this.runtime,
    @required this.desc,
    @required this.rating,
    @required this.imageUrl,
    @required this.bannerUrl,
    @required this.trailerImg1,
    @required this.trailerImg2,
    @required this.trailerImg3,
    @required this.price,
    @required this.priceDiscount,
    @required this.discount,
    @required this.color,
    @required this.size,
  });
}
