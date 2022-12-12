import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wthrapp/blocs/geolocation/geolocation_bloc.dart';
import 'package:wthrapp/repositories/geolocation/geolocation_repository.dart';
import 'package:wthrapp/screens/home_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: Colors.green, // transparent status bar
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Weather Apps",
        debugShowCheckedModeBanner: false,
        // theme:
        //     ThemeData(scaffoldBackgroundColor: Color.fromRGBO(45, 3, 59, 100)),
        home: MyHomePage());
  }
}
