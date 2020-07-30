import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_filter_app/screen/MultiSelectChip.dart';
import 'package:flutter_filter_app/screen/Slider.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

class FullScreenDialogDemo extends StatefulWidget {
  @override
  _FullScreenDialogDemo createState() => _FullScreenDialogDemo();
}

class _FullScreenDialogDemo extends State<FullScreenDialogDemo> {

  List<String> reportList = ["XS", "S", "M", "L", "XL"];

  List<String> selectedReportList = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Text("Filters"),
        )),
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
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _PriceRange(),
            _SizeChoose(),
            _Category(),
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {},
                  child: const Text('Discard', style: TextStyle(fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: RaisedButton(
                    onPressed: () {
                      print("test apply"+selectedReportList.toString());
                    },
                    child: const Text('Apply', style: TextStyle(fontSize: 20)),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            )
          ],
        );
      },
      shrinkWrap: true,
    );
  }

  Widget _PriceRange() {
    return new StickyHeader(
      header: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: new Column(
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
                child: Text(
                  "Price Range",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      content: Container(
        height: 50,
        color: Colors.white,
        child: RangeSliderSample(),
      ),
    );
  }

  Widget _SizeChoose() {
    return new StickyHeader(
      header: Container(
        alignment: Alignment.topLeft,
        child: new Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
              child: Text(
                "Sizes",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
      content: Container(
        width: double.infinity,
        height: 80,
        color: Colors.white,
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: MultiSelectChip(
            reportList,
            onSelectionChanged: (selectedList) {
              setState(() {
                selectedReportList = selectedList;
              });
              print(selectedReportList);
            },
          ),
        ),
      ),
    );
  }

  Widget _Category() {
    List<String> reportList = ["All", "Women", "Men", "Boys", "Girls"];

    List<String> selectedReportList = List();

    return new StickyHeader(
      header: Container(
        alignment: Alignment.topLeft,
        child: new Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
              child: Text(
                "Category",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
      content: Container(
        width: double.infinity,
        height: 100,
        color: Colors.white,
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: MultiSelectChip(
            reportList,
            onSelectionChanged: (selectedList) {
              setState(() {
                selectedReportList = selectedList;
              });
              print(selectedReportList);
            },
          ),
        ),
      ),
    );
  }
}
