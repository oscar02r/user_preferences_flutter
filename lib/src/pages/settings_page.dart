
import'package:flutter/material.dart';
import 'package:user_preferences_flutter/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget{
  static final String routeName ='settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _colorSecundario = false;
  int _genero =1;
  String _nombre ='Pedro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: MenuWidget(),
      body: ListView(
        children: [
          Container(
            child: Text('Settings', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 56.0
            ),
            ),
          ),
          Divider(),
          SwitchListTile(
              value: _colorSecundario,
              title: Text('Color secundario'),
              onChanged: (value){
                _colorSecundario = value;
                setState(() {});
              }
          ),
          RadioListTile(
              value: 1,
              title: Text('Masculino'),
              groupValue: 1,
              onChanged:(value) {

                setState(() {});
              }
          ),
          RadioListTile(
              value: 1,
              title: Text('Femenino'),
              groupValue: 2,
              onChanged:(value) {}
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Aqui se escribe el nombre de la persona.'
              ),
              onChanged: (value){},
            ),
          )
        ],
      )
    );
  }
}