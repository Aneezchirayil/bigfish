
import 'package:bigfishaneez/Home/Products/product.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}
final List<Color> colors =[Colors.pink,Colors.lime,Colors.lightBlue];
var Categories =["freshfish","seerfish","crab","pomfret"];
class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       ListView(
        children: [
          CarouselSlider.builder(
            itemCount: colors.length, 
            itemBuilder: (context, index, realIndex) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: colors[index],
                    borderRadius: BorderRadius.circular(15)
                  ),
                ),
              );
            }, options: CarouselOptions(
              autoPlay: true,
              aspectRatio:2.0,
              enlargeCenterPage: true,
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories",style: TextStyle(fontWeight: FontWeight.bold),),
                  TextButton(onPressed: (){}, child: Text("View All"))
                ],
              ),
            ),
            SizedBox(
              height: 360,
              child: GridView.builder(
                
                scrollDirection: Axis.horizontal,
                gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                crossAxisCount: 2) , 
                itemCount: Categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Productpage(),));
                    },
                    child: Container(
                      // height: 200,
                      // width: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [BoxShadow(
                          color: Colors.black,
                          
                        )]
                      ),
                      child: Center(child: Text(Categories[index])),
                    ),
                  ),
                );
              },),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Fresh Arrival",style: TextStyle(fontWeight: FontWeight.bold),),
                  TextButton(onPressed: (){}, child: Text("View All"))
                ],
              ),
            ),
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
                       Container(
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
                    );
                    
                  },),
            )

            
        ],
       ),
    );
  }
}