import 'dart:async';

import 'package:bigfishaneez/Login/login.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Flashlogo(),
      debugShowCheckedModeBanner: false,
     // theme: ThemeData(primarySwatch: Colors.white),
    );
  }
}
class Flashlogo extends StatefulWidget {
  const Flashlogo({super.key});

  @override
  State<Flashlogo> createState() => _FlashlogoState();
}

class _FlashlogoState extends State<Flashlogo> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => Loginpage(),)));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.black),
        child: Center(child: Image.asset("assets/images/logo-white.png",fit: BoxFit.fill,))),
    );
  }
}