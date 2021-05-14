import '../../splash/bloc/splash_bloc.dart';
import '../../user/repository/user_repository.dart';
import '../bloc/splash_bloc.dart';
import '../../../constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocProvider<SplashBloc>(
          create: (context)=> SplashBloc(
              userRepository:RepositoryProvider.of<UserRepository>(context)
          )..add(SplashEvent.checkUserSignedIn),
          child: BlocListener<SplashBloc,SplashState>(
            listener: (_,state){
              switch(state){
                case SplashState.goHome:
                  break;
                case SplashState.goLogin:
                  break;
              }
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: Hero(
                tag: 'logo',
                child: Image.asset(Assets.appLogo),
              ),
            ),
          )
        ),
      ),
    );
  }
}
