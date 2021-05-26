//clase que swichea entre los proveedores segun corresponda
import 'package:boileplate/provider/AuthProvider.dart';

class AuthRepository{
  AuthProvider _provider = AuthProvider();

  Future<bool> signIn() => _provider.signIn();
  Future<bool> isAuthenticated() => _provider.isAuthenticated();
  Future<void> getCurrentUser() => _provider.getCurrentUser();
  Future<void> signOut()=> _provider.signOut();
}