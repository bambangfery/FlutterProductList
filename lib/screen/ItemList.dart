import 'package:flutter/material.dart';
import 'package:flutter_filter_app/model/Item.dart';
import 'package:flutter_filter_app/screen/GetRatings.dart';
import 'package:flutter_filter_app/screen/GridItemDetails.dart';

class ItemList extends StatelessWidget {
  final Item item;

  const ItemList({@required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
//        Navigator.push(
//          context,
//          MaterialPageRoute(
//            builder: (context) => GridItemDetails(this.item),
//          ),
//        );
      },
      child: Card(
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 9.0 / 12.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Image.asset(
                      item.trailerImg1,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: item.discount == null
                      ? new Text("")
                      : Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 4.0, right: 6.0, left: 6.0, bottom: 4.0),
                            child: Text(
                              "-" + item.discount + "%",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                ),
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: ClipOval(
                    child: Material(
                      // button color
                      child: InkWell(
                        splashColor: Colors.red, // inkwell color
                        child: SizedBox(
                            width: 46,
                            height: 46,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            )),
                        onTap: () {},
                      ),
                    ),
                  ),
                )
              ],
            ),
            new Padding(
              padding: EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 2.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GetRatings(
                    rate: item.rating,
                  ),
                  SizedBox(height: 0.0),
                  Text(
                    item.category,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 9.0,
                    ),
                  ),
                  Text(
                    item.name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 2.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 4.0),
                        child: Column(
                          children: <Widget>[
//                            Text(
//                              'RELEASE DATE:',
//                              style: TextStyle(
//                                color: Colors.black38,
//                                fontSize: 9.0,
//                                fontWeight: FontWeight.bold,
//                              ),
//                            ),
                            item.priceDiscount == null
                                ? Text(
                                    item.price,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                : Stack(
                                    alignment: Alignment.center,
                                    children: <Widget>[
                                      Text(
                                        item.price,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                      SizedBox(
                                          width: 15,
                                          height: 2,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey),
                                          ))
                                    ],
                                  ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 4.0),
                        child: Column(
                          children: <Widget>[
//                            Text(
//                              'RUNTIME:',
//                              style: TextStyle(
//                                color: Colors.black38,
//                                fontSize: 9.0,
//                                fontWeight: FontWeight.bold,
//                              ),
//                            ),
                            Text(
                              item.priceDiscount ?? "",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Container(
                          child: Text(
                            item.size,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: ClipOval(
                          child: Material(
                            // button color
                            child: InkWell(
                              // inkwell color
                              child: SizedBox(
                                width: 10,
                                height: 10,
                                child: Container(
                                  decoration: BoxDecoration(color: item.color),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderContent extends StatelessWidget {
  final Item item;

  HeaderContent(this.item);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 10.0, top: 5.0, right: 10.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xFFD73C29),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    item.category,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 9.0,
                    ),
                  ),
                  GetRatings(),
                  MovieDesc(this.item),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovieDesc extends StatelessWidget {
  final Item item;

  MovieDesc(this.item);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  'RELEASE DATE:',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 9.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  item.releaseDate,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 9.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              children: <Widget>[
                Text(
                  'RUNTIME:',
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 9.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  item.runtime,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 9.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
