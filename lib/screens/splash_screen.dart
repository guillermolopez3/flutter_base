import 'package:boileplate/bloc/auth/auth_bloc.dart';
import 'package:boileplate/bloc/auth/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc,AuthState>(
        builder: (context,state){
          if(state is AuthInProgress){
            return _splash();
          }
          if(state is Unauthenticated || state is AuthFailure){
            Navigator.of(context).pushReplacementNamed('/inicio');
          }
          if(state is AuthSuccess){
            Navigator.of(context).pushReplacementNamed('/home');
          }
          return _splash();
        },
      ),
    );
  }

  _splash(){
    return Center(

    );
  }
}
