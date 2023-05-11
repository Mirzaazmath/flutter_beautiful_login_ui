import 'package:flutter/material.dart';

import 'Screens/loginScreen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(143, 148, 251, 1),
      ),
      home: LoginScreen(),
    );
  }
}
