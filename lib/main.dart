import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_page_ui_design/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backwardsCompatibility: false,
              systemOverlayStyle:
                  SystemUiOverlayStyle(statusBarColor: Colors.red))),
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
