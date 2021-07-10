
import'package:flutter/material.dart';
import 'package:user_preferences_flutter/src/share_preferences/preferences_user.dart';

import 'package:user_preferences_flutter/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget{
  static final String routeName ='settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final prefs = PreferenciasUsuario();
  bool ? _colorSecundario;
  int ? _genero;
  String ? _nombre;
  TextEditingController ? _textController ;


  @override
  void initState() {
    super.initState();
    _genero = prefs.genero;
    _nombre = prefs.nombre;
    _colorSecundario = prefs.colorSecundario;
    _textController = new TextEditingController( text: _nombre);
  }


  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina =  SettingsPage.routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
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
              value: _colorSecundario!,
              title: Text('Color secundario'),
              onChanged: (value){
                prefs.colorSecundario = value;
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
              onChanged: (value){
                  _nombre = value;
                  prefs.nombre = value;
              },
            ),
          )
        ],
      )
    );
  }

  void _setSelectRadio(int? value)  {
    prefs.genero=value;
    _genero = value;
    setState(() {});
  }
}