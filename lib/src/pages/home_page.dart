
import'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  static final String routeName ='home';
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Preferencias de usuarios'),
     ),
     body: Column(
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