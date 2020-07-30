import 'package:flutter/material.dart';
import 'package:flutter_filter_app/model/Item.dart';
import 'package:flutter_filter_app/screen/Filter.dart';
import 'package:flutter_filter_app/screen/ItemList.dart';
import 'package:flutter_filter_app/screen/ListChips.dart';
import 'package:sticky_headers/sticky_headers.dart';

class HomeScreen extends StatelessWidget {
  List<Item> itemList;
  List<dynamic> listChips;

  @override
  Widget build(BuildContext context) {
    itemList = _itemList();
    listChips = _listChips();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        title: Center(child: Text("Women's tops")),
        leading: Container(
          child: new IconButton(
              icon: new Icon(Icons.arrow_back_ios), onPressed: () {}),
        ),
      ),
      backgroundColor: Color(0xFFE5E7E9),
      body: _gridView(context),
    );
  }

  Widget _gridView(BuildContext context) {
    return new ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        return new StickyHeader(
          header: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: new Wrap(
                alignment: WrapAlignment.center,
                children: <Widget>[
                  ListChips(item: listChips),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: _component(context),
                  ),
                ],
              ),
            ),
          ),
          content: Container(
            child: GridView.count(
              physics: ScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              padding: EdgeInsets.all(4.0),
              childAspectRatio: 9.0 / 16.0,
              children: itemList
                  .map(
                    (Item) => ItemList(item: Item),
                  )
                  .toList(),
            ),
          ),
        );
      },
      shrinkWrap: true,
    );
  }

  Widget _component(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => FullScreenDialogDemo()));
            },
            child: Container(
              child: Row(
                children: <Widget>[
                  Icon(Icons.filter_list,size: 30.0,),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Text("Filter"),
                  )
                ],
              ),
//            color: Color(0xFFEBEDEF),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            child: Row(
              children: <Widget>[
                Icon(Icons.import_export),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                  child: Text("Price: lowest to high"),
                )
              ],
            ),
//            color: Color(0xFFEBEDEF),
          ),
        ),
        Expanded(
          flex: 0,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 5.0,
              ),
              child: Icon(Icons.view_list),
            ),
//            color: Color(0xFFEBEDEF),
          ),
        )
      ],
    );
  }

  List<Item> _itemList() {
    return [
      Item(
          id: 0,
          name: 'T-Shirt SPANISH',
          category: 'Mango',
//          desc: 'The Avengers and their allies must be willing '
//              'to sacrifice all in an attempt to defeat '
//              'the powerful Thanos before his blitz of '
//              'devastation and ruin puts an end to the universe.'
//              '\nAs the Avengers and their allies have continued '
//              'to protect the world from threats too large for '
//              'any one hero to handle, a danger has emerged '
//              'from the cosmic shadows: Thanos.',
          rating: 8.7,
//          directors: 'Directors: Anthony Russo, Joe Russo',
//          releaseDate: '27 April 2018',
//          releaseDateDesc: 'USA (2018), 2h 29min',
//          runtime: '2h 29min',
//          bannerUrl: 'assets/images/movie_banner_1.png',
//          imageUrl: 'assets/images/ic_preview_1.png',
          trailerImg1: 'assets/images/ic_top1.jpg',
//          trailerImg2: 'assets/images/ic_thumb_12.png',
//          trailerImg3: 'assets/images/ic_thumb_13.png',
          price: "10\$",
          priceDiscount: "9\$",
          discount: "10",
          color: Colors.red,
          size: "S"),
      Item(
          id: 1,
          name: 'Blouse',
          category: 'Dorothy Perkins',
//          desc: 'Autobots and Decepticons are at war, with humans '
//              'on the sidelines. Optimus Prime is gone. The key to '
//              'saving our future lies buried in the secrets of the past, '
//              'in the hidden history of Transformers on Earth.',
          rating: 5.2,
//          directors: 'Directors: Michael Bay',
//          releaseDate: '21 June 2017',
//          releaseDateDesc: 'USA (2017), 2h 34min',
//          runtime: '2h 34min',
//          bannerUrl: 'assets/images/movie_banner_2.png',
//          imageUrl: 'assets/images/ic_preview_2.png',
          trailerImg1: 'assets/images/ic_top2.jpg',
//          trailerImg2: 'assets/images/ic_thumb_21.png',
//          trailerImg3: 'assets/images/ic_thumb_21.png',
          price: "12\$",
          color: Colors.yellow,
          size: "M"),
      Item(
          id: 2,
          name: 'Shirt',
          category: 'Mango',
//          desc: 'Jake Pentecost, son of Stacker Pentecost, reunites with '
//              'Mako Mori to lead a new generation of Jaeger pilots, including '
//              'rival Lambert and 15-year-old hacker Amara, against a new Kaiju threat.',
          rating: 5.7,
//          directors: 'Directors: Steven S. DeKnight',
//          releaseDate: '23 March 2018',
//          releaseDateDesc: 'USA (2018), 1h 51min',
//          runtime: '1h 51min',
//          bannerUrl: 'assets/images/movie_banner_3.png',
//          imageUrl: 'assets/images/ic_preview_3.png',
          trailerImg1: 'assets/images/ic_top1.jpg',
//          trailerImg2: 'assets/images/ic_thumb_31.png',
//          trailerImg3: 'assets/images/ic_thumb_31.png',
          price: "18\$",
          color: Colors.black,
          size: "XL"),
      Item(
          id: 3,
          name: 'Light Blouse',
          category: 'Dorothy Perkins',
//          desc: 'Thor is imprisoned on the planet Sakaar, and must '
//              'race against time to return to Asgard and stop Ragnarök, '
//              'the destruction of his world, at the hands of the powerful '
//              'and ruthless villain Hela.',
          rating: 7.9,
//          directors: 'Directors: Taika Waititi',
//          releaseDate: '3 November 2017',
//          releaseDateDesc: 'USA (2017), 2h 10min',
//          runtime: '2h 10min',
//          bannerUrl: 'assets/images/movie_banner_4.png',
//          imageUrl: 'assets/images/ic_preview_4.png',
          trailerImg1: 'assets/images/ic_top2.jpg',
//          trailerImg2: 'assets/images/ic_thumb_41.png',
//          trailerImg3: 'assets/images/ic_thumb_41.png',
          price: "20\$",
          color: Colors.red,
          size: "L"),
    ];
  }

  List<dynamic> _listChips() {
    return [
      "T-shirts",
      "Crop tops",
      "Blouses",
      "Pants",
      "Shoes",
      "Jeans",
    ];
  }
}
