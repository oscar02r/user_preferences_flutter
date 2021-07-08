import 'package:flutter/material.dart';
import 'package:user_preferences_flutter/src/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp  extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

   return MaterialApp(
     title: 'Preferencias',
     initialRoute: HomePage.routeName ,
     routes: {
       HomePage.routeName:(BuildContext context) => HomePage()
     },
   );
  }
}
