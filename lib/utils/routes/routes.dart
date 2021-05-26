import '../../screens/error_screen.dart';
import '../../screens/home_screen.dart';
import '../../screens/login_screen.dart';
import '../../screens/splash_screen.dart';
import 'package:flutter/material.dart';

class Routes{
  Routes._();

  static const String splash  = '/splash';
  static const String login   = '/login';
  static const String home    = '/home';

  static Route<dynamic> generarRutas(RouteSettings settings){
    final arguments = settings.arguments;
    switch(settings.name){
      case splash:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case home:
        return MaterialPageRoute(builder: (_)=> HomeScreen());
      case login:
        return MaterialPageRoute(builder: (_)=> LoginScreen());
      default:
        return MaterialPageRoute(builder: (_)=> ErrorScreen());
    }
  }
}