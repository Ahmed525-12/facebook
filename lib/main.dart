import 'package:facebook/homePage.dart';
import 'package:facebook/loginPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
    
        primarySwatch: Colors.blue,
      ),
      routes: {
        LogIn.routeName:(context) =>  LogIn(),
        HomePage.routeName:(context) => HomePage()
      },
      initialRoute:  LogIn.routeName,
    );
  }
}
