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
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                Text("Fish Ghee Rice",style: TextStyle(color: Colors.black87,fontSize: 25,fontWeight: FontWeight.bold),),
              Row(
                children: [
                  Icon(Icons.schedule,color: Colors.black87,),
                  Text("3 hr 45 min",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),),
                  SizedBox(width: 10,),
                  Icon(Icons.local_fire_department,color: Colors.black87,),
                  Text("480 cals",style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),)
                ],
              )
              ],),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Ingredients",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: 50,
                child:ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 10,left: 10),
                      child: Row(
                        children: [
                          Icon(Icons.add_circle),
                          SizedBox(width: 5,),
                          Text("250 grams fish pieces")
                        ],
                      ),
                    );
                  },) ,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("How to cook",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 100,
                width: double.infinity,
                child: 
                ListView.builder(
                  itemCount: 3,
                  itemBuilder:(context, index) {
                  return Column(
                    children: [
                      Text("1. Wash, soak and cook rice al dente. It can be cooked in a pot or cooker. Once done cool it completely."),
                      SizedBox(height: 10,)
                    ],
                  );
                },),
              ),
            ),
          )
        ],
      ),
    );
  }
}