import './provider/LocalDataProvider.dart';
import './boileplate_app.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

  await LocalDataProvider.init();
  runApp(BoilePlateApp());
}

