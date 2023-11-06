import 'package:flutter/material.dart';

class Recipespage extends StatefulWidget {
  const Recipespage({super.key});

  @override
  State<Recipespage> createState() => _RecipespageState();
}

class _RecipespageState extends State<Recipespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recipes"),
      ),
    );
  }
}