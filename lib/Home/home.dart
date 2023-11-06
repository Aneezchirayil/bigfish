import 'package:bigfishaneez/Products/product.dart';
import 'package:bigfishaneez/recipes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
final List<Color> colors =[Colors.pink,Colors.lime,Colors.lightBlue];
var Categories =["freshfish","seerfish","crab","pomfret"];
var indexnum=0;

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,bottom: 10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/person.png"),
                      radius: 40,
                    ),
                  ),
                  Text("Welcome to Healthy Fish",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),)
                ],
              )),
              ListTile(
                leading: Icon(Icons.login),
                title: Text("Login"),
                onTap: (){},
              ),
              ListTile(
                leading: IconButton(
                  onPressed: (){}, icon: Image.asset("assets/images/All products.png",
                  color: Colors.grey,)),
                title: Text("All Products"),
                trailing: Icon(Icons.arrow_drop_down,),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.local_library),
                title: Text("Refer & Earn"),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.local_offer_sharp),
                title: Text("Offers"),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.ballot),
                title: Text("Recipes"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Recipespage(),));
                },
              ),
              ListTile(
                leading: Icon(Icons.question_answer_sharp),
                title: Text("FAQ"),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.report),
                title: Text("About"),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("Contact"),
                onTap: (){},
              ),
          ],
        ),
      ),
      appBar: AppBar(backgroundColor: Colors.black,
      toolbarHeight: 80,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
        ],
        title: Center(child: CircleAvatar(
          radius: 35,
          backgroundImage: AssetImage("assets/images/logo-white.png"),)),
          bottom: PreferredSize(child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black)
                  ) ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black),
                    
                  ),
                  hintText: "search for fish",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
           preferredSize:Size.fromHeight(50) ,),
         ),
       body: ListView(
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
       bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: indexnum,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.black),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "Categories",
              backgroundColor: Colors.black),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
              label: "Settings",
              backgroundColor: Colors.black)
        ],
        onTap: (value) {
          setState(() {
            indexnum=value;
          });
        },
        ),
    );
  }
}