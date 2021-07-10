
import 'package:shared_preferences/shared_preferences.dart';

class PreferenciasUsuario{

  static final PreferenciasUsuario _instancia = new PreferenciasUsuario._internal();

  factory PreferenciasUsuario(){
    return _instancia;
  }

  PreferenciasUsuario._internal();

  SharedPreferences ? _prefs;

  initPrefs()async{
    this._prefs = await  SharedPreferences.getInstance();
  }

   get  genero {
    return _prefs?.getInt('genero') ?? 1;
  }

  set genero(  value){
    _prefs?.setInt('genero', value);
  }
  get  nombre {
    return _prefs?.getString('nombre') ?? '';
  }
  set nombre(  value){
    _prefs?.setString('nombre', value);
  }
  get  ultimaPagina {
    return _prefs?.getString('ultimaPagina') ?? 'settings';
  }
  set ultimaPagina(  value){
    _prefs?.setString('ultimaPagina', value);
  }
  bool get  colorSecundario {
    return _prefs?.getBool('colorSecundario') ?? false;
  }
  set colorSecundario (  bool ? value){
    _prefs?.setBool('colorSecundario', value!);
  }


}