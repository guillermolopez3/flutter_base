import './utils/routes/routes.dart';
import './constants/contstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BoilePlateApp extends StatelessWidget {
  const BoilePlateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [

        ],
        child: MaterialApp(
          title: Strings.appName,
          debugShowCheckedModeBanner: false,
          theme: themeData,
          routes: Routes.routes,
          initialRoute: Routes.splash,
        )
    );
  }
}
