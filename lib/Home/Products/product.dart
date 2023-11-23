import 'package:bigfishaneez/Home/Products/seafish.dart';
import 'package:flutter/material.dart';

class Productpage extends StatefulWidget {
  String? index;
 Productpage({super.key,this.index});

  @override
  State<Productpage> createState() => _ProductpageState();
}

class _ProductpageState extends State<Productpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
     child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Fresh Fish",style: TextStyle(color: Colors.white)),
        bottom: TabBar(
          tabs: [
            Tab(text: "SEA FISH",),
            Tab(text: "BACKWATER FISH",),
            Tab(text: "FRESH FISH",)
          ]),
      ),
      body: TabBarView(children: [
        Seafishpage()
      ]),
      

     ));
  }
}