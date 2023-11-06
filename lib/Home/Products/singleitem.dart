import 'package:flutter/material.dart';

class Singproduct extends StatefulWidget {
  const Singproduct({super.key});

  @override
  State<Singproduct> createState() => _SingproductState();
}
var cut=[];
String dpval="select";
class _SingproductState extends State<Singproduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Seer Fish/King Fish"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [BoxShadow(
                color: Colors.black
              )]
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage("assets/images/seerfish.jpeg"),fit: BoxFit.fill)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text("Seer Fish/ King Fish/ Surmal/Neymeen/Vanjaram/Anjal(1.5 to 6.6 kg)",
                    style: TextStyle(fontWeight: FontWeight.bold),),
                  )
                  
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black
                )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Choose Your cut",style: TextStyle(fontWeight: FontWeight.bold),),
                  DropdownButton(
                    value: dpval,
                    items: cut.map((e) {
                      return DropdownMenuItem(
                        child: Text(e),
                      value:e,);
                    }).toList(),
                     onChanged: (value){
                      setState(() {
                        dpval=value.toString();
                      });
                    })
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black
                )
              ]
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Request Your Quantity",
                  style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Whole: 180/500 grams",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
                      Text("Rs. 360",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(height: 25,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Text("Kilogram",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("Grams",style: TextStyle(fontWeight: FontWeight.bold),)
                  ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                        Text("2"),
                        IconButton(onPressed: (){}, icon: Icon(Icons.remove))
                      ],),
                      Row(children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.add)),
                        Text("100"),
                        IconButton(onPressed: (){}, icon: Icon(Icons.remove))
                      ],),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(height:150 ,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black
              )
            ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Price Summary",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 15,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Whole Product Price"),
                    Text("580/kg")
                  ],
                ),
                SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Whole Product Required"),
                    Text("0.769 kg")
                  ],
                ),
              ],
            ),
          ),
          )
        ],
      ),
    );
  }
}