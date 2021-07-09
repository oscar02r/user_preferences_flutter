import 'package:flutter/material.dart';
import 'package:user_preferences_flutter/src/pages/home_page.dart';
import 'package:user_preferences_flutter/src/pages/settings_page.dart';
import 'package:user_preferences_flutter/src/share_preferences/preferences_user.dart';

void main() async {
  final prefs = PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(MyApp());
}

class MyApp  extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

   return MaterialApp(
     title: 'Preferencias',
     initialRoute: HomePage.routeName ,
     routes: {
       HomePage.routeName:(BuildContext context) => HomePage(),
       SettingsPage.routeName:(BuildContext context) => SettingsPage()
     },
   );
  }
}

