//clase que se comunica con el backend
import 'package:boileplate/provider/LocalDataProvider.dart';

import '../model/User.dart';

class AuthProvider{

  //reemplazar por las credenciales correspondientes
  Future<bool> signIn() async{
    return true;
  }

  Future<bool> isAuthenticated() async{
    return false;
  }
  //verifica si el usuario esta en local, por lo tanto esta autenticado
  User? getCurrentUser(){
    final map = LocalDataProvider.instance.getString(userKey);
    return (map != null) ? User.fromJson(map) : null;
  }

  Future<void> signOut()async{}
}