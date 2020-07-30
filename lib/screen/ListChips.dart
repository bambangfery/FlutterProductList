import 'package:flutter/material.dart';

class ListChips extends StatelessWidget {
  final List<dynamic> item;

  const ListChips({@required this.item});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: item
              .map((e) => Padding(
                    padding: const EdgeInsets.only(right: 5.0, top: 5.0),
                    child: Chip(
                      labelPadding: EdgeInsets.only(left: 10.0, right: 10.0),
                      label: Text(
                        e,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      backgroundColor: Colors.black,
                      elevation: 6.0,
                      shadowColor: Colors.grey[60],
                    ),
                  ))
              .toList()),
    );
  }
}
