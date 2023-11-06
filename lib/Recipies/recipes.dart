import 'package:bigfishaneez/Recipies/recipieitem.dart';
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
        backgroundColor: Colors.black,
        title: Text("Recipes"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(height: double.infinity,
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5), 
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child:
                             InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Itemrecipe(),));
                              },
                               child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(color: Colors.black)
                                  ]
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 80,
                                        width: double.infinity,
                                        child: Image.asset("assets/images/ghee rice.jpeg",fit: BoxFit.fill,),),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 8),
                                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Fish Ghee Rice",style: TextStyle(fontWeight: FontWeight.bold),),
                                          SizedBox(height: 5,),
                                          Text("Difficulty : Easy",style: TextStyle(color: Colors.grey),),
                                          Text("Cooking : 25 Minutes",style: TextStyle(color: Colors.grey),)
                                        ],
                                                                          ),
                                      ),)
                                    
                                  ],
                                ),
                                                       ),
                             ),
                          );
                          
                        },),
                  ),
      ),
    );
  }
}