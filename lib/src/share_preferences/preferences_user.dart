import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario{

  static final PreferenciasUsuario _prerenccias = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario(){
    return _prerenccias;
  }

  PreferenciasUsuario._internal();

  SharedPreferences ? _prefs ;

  initPrefs()async{
    this._prefs = await  SharedPreferences.getInstance();
  }
  get  genero {
    return _prefs?.getInt('genero') ?? 1;
  }

  set genero( value){
    _prefs?.setInt('genero', value);
  }
}