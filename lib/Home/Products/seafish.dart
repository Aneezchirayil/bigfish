import 'package:bigfishaneez/Home/Products/singleitem.dart';
import 'package:flutter/material.dart';

class Seafishpage extends StatefulWidget {
  const Seafishpage({super.key});

  @override
  State<Seafishpage> createState() => _SeafishpageState();
}

class _SeafishpageState extends State<Seafishpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          SizedBox(height: 360,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5), 
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10),
                          child:
                           InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Singproduct(),));
                            },
                             child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(color: Colors.black)
                                ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 75,
                                      child: Image.asset("assets/images/ayala img.jpeg"),),
                                    Text("Indian Mackerel/ Ayala / Bangda / Aiyla(large 6+ count/kg)"),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                        Text("Rs. 299.00/500g"),
                                        Text("Rs 309.00",style: TextStyle(
                                          decoration: TextDecoration.lineThrough,
                                          color: Colors.grey,fontSize: 10
                                        ),)
                                      ],),
                                    )
                                  ],
                                ),
                              ),
                                                     ),
                           ),
                        );
                        
                      },),
                ),
                Spacer(),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black
                      )
                    ],
                    color: Colors.white
                  ),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child:  Row(
                              children: [
                                Icon(Icons.sort),
                                Text("SORT")
                              ],
                            ),
                        ),
                      ),
                      Divider(),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          child:  Row(
                                children: [
                                  Icon(Icons.sort),
                                  Text("FILTER")
                                ],
                              ),
                        ),
                      )
                    ],
                  ),
                ),
              
        ],
      )
 ,
    );
  }
}