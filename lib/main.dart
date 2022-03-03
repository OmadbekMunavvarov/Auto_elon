import 'package:cars/details.dart';
import'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import'Home_Page.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    WidgetsApp.debugAllowBannerOverride=false;
    return MaterialApp(
   theme: ThemeData(primarySwatch:Colors.blue ),
      initialRoute: '/',
      routes: {
         '/':(context)=>Home_Page(),
        '/details':(context)=>DetailsPage(),
      },
    );

  }
}
