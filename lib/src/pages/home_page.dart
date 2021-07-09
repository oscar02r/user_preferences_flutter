
import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:user_preferences_flutter/src/share_preferences/preferences_user.dart';
import 'package:user_preferences_flutter/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget{
  static final String routeName ='home';
  final prefs = new PreferenciasUsuario();

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
         Text('Genero: ${prefs.genero} '),
         Divider(),
         Text('Nombre usuario: '),
         Divider(),
       ],
     ),
   );
  }




}