
import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';

import 'package:user_preferences_flutter/src/share_preferences/preferences_user.dart';
import 'package:user_preferences_flutter/src/widgets/menu_widget.dart';

class HomePage extends StatelessWidget{
  static final String routeName ='home';
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = HomePage.routeName;
   return Scaffold(
     appBar: AppBar(
       title: Text('Preferencias de usuarios'),
       backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
     ),
     drawer: MenuWidget (),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text('Color secundario: ${prefs.colorSecundario} '),
         Divider(),
         Text('Genero: ${prefs.genero} '),
         Divider(),
         Text('Nombre usuario: ${prefs.nombre}'),
         Divider(),
       ],
     ),
   );
  }




}