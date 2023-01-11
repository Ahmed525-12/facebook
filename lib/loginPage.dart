// ignore_for_file: prefer_const_constructors

import 'package:facebook/homePage.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  static const String routeName = "login";
  LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: null,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 5),
                child: const Icon(Icons.facebook_rounded,
                    color: Colors.white, size: 80),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: TextField(
                  
                  onChanged: (value) {
                    name = value;
                    setState(() {
                      
                    });
                  },
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 145, 66, 66)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: const TextField(
                  obscureText: true,
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 3, color: Color.fromARGB(255, 145, 66, 66)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(
                         HomePage.routeName,arguments:NameArgs(name: name) );
                    },
                    child: const Text("LOG IN"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Colors.lightBlueAccent.shade700),
                    ),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
