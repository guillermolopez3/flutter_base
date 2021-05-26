import './bloc/auth/auth_bloc.dart';
import './repository/AuthRepository.dart';
import './utils/routes/routes.dart';
import './constants/contstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class BoilePlateApp extends StatelessWidget {
  AuthRepository _repository = AuthRepository();

  BoilePlateApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
              create: (context) => AuthBloc(repository: _repository)..add(CheckUserSignedIn())
          )
        ],
        child: MaterialApp(
          title: Strings.appName,
          debugShowCheckedModeBanner: false,
          theme: themeData,
          onGenerateRoute: Routes.generarRutas,
          initialRoute: Routes.splash,
        )
    );
  }
}
