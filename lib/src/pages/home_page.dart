
import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:user_preferences_flutter/src/pages/settings_page.dart';
import 'package:user_preferences_flutter/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget{
  static final String routeName ='home';
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Preferencias de usuarios'),
     ),
     drawer: MenuWidget (),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text('Color secundario: '),
         Divider(),
         Text('Genero: '),
         Divider(),
         Text('Nombre usuario: '),
         Divider(),
       ],
     ),
   );
  }




}