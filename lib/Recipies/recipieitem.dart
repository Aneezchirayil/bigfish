import 'package:flutter/material.dart';

class Itemrecipe extends StatefulWidget {
  const Itemrecipe({super.key});

  @override
  State<Itemrecipe> createState() => _ItemrecipeState();
}

class _ItemrecipeState extends State<Itemrecipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Fish Ghee Rice"),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/ghee rice.jpeg"),fit: BoxFit.fill)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Fish Ghee Rice",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              Row(
                children: [
                  Icon(Icons.schedule,color: Colors.white,),
                  Text("3 hr 45 min"),
                  //Icon(Icons.)
                ],
              )
              ],),
            ),
          )
        ],
      ),
    );
  }
}