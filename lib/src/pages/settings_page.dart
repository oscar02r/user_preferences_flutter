
import'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  TextEditingController ? _textController ;

  @override
  void initState() {
    super.initState();
    _textController = new TextEditingController( text: _nombre);
    _cargarPrefs();
  }

  _cargarPrefs() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _genero = prefs.getInt('genero') as int;
    setState(() {});
  }
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
              groupValue: _genero,
              onChanged:_setSelectRadio
          ),
          RadioListTile(
              value: 2,
              title: Text('Femenino'),
              groupValue: _genero,
              onChanged:_setSelectRadio
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textController,
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

  void _setSelectRadio(int? value) async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('genero', value!);
    _genero = value;
    setState(() {});
  }
}