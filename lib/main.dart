import 'package:flutter/material.dart';
import 'package:flutter_filter_app/constant/Constant.dart';
import 'package:flutter_filter_app/screen/HomeScreen.dart';
import 'package:flutter_filter_app/screen/SplashScreen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Filter Product',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.cyan,
    ),
    home: SplashScreen(),
    routes: <String, WidgetBuilder>{
      SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
      HOME_SCREEN: (BuildContext context) => HomeScreen(),
      //GRID_ITEM_DETAILS_SCREEN: (BuildContext context) => GridItemDetails(),
    },
  ));
}

//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Filter Product',
//      theme: ThemeData(
//        primarySwatch: Colors.white,
//      ),
//      home: SplashScreen(),
//      routes: <String, WidgetBuilder>{
//        SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
//        HOME_SCREEN: (BuildContext context) => HomeScreen(),
//        //GRID_ITEM_DETAILS_SCREEN: (BuildContext context) => GridItemDetails(),
//      },
//    );
//  }
//}
