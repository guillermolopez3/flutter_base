//clase que se comunica con el backend
class AuthProvider{

  //reemplazar por las credenciales correspondientes
  Future<bool> signIn() async{
    return true;
  }

  Future<bool> isAuthenticated() async{
    return false;
  }
  //reemplazar por las credenciales correspondientes
  Future<void> getCurrentUser() async{

  }

  Future<void> signOut()async{}
}