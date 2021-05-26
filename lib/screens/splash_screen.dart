import '../bloc/auth/auth_bloc.dart';
import '../constants/assets.dart';
import '../utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc,AuthState>(
        listener: (context, state){
          if(state is Unauthenticated || state is AuthFailure){
            Navigator.of(context).pushReplacementNamed(Routes.login);
          }
          if(state is AuthSuccess){
            Navigator.of(context).pushReplacementNamed(Routes.home);
          }
        },
        builder: (context,state){
            if(state is AuthInProgress){
              return _splash();
            }
            return _splash();
          },
      )
    );
  }

  _splash(){
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Image.asset(Assets.appLogo),
      )
    );
  }
}
