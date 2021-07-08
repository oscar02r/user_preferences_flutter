import 'package:flutter/material.dart';
import 'package:user_preferences_flutter/src/pages/home_page.dart';
import 'package:user_preferences_flutter/src/pages/settings_page.dart';

class MenuWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(child: Text('Hola mundo'),),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/menu.jpg'),
                    fit: BoxFit.cover
                )
            ),
          ),
          ListTile(
            leading:Icon(Icons.people, color: Colors.blue,),
            title: Text('People'),
            onTap: (){},
          ),
          ListTile(
            leading:Icon(Icons.pages, color: Colors.blue,),
            title: Text('Pages'),
            onTap: (){
              Navigator.pushReplacementNamed (context, HomePage.routeName);
            },
          ),
          ListTile(
            leading:Icon(Icons.settings, color: Colors.blue,),
            title: Text('Settings'),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushReplacementNamed (context, SettingsPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}