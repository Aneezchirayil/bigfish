import 'package:bigfishaneez/Api/apiclass.dart';
import 'package:bigfishaneez/Api/model/productmodel.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Singproduct extends StatefulWidget {
  String? index1;
  Singproduct({super.key,this.index1});

  @override
  State<Singproduct> createState() => _SingproductState();
}
var cut=[];
String dpval="select";
class _SingproductState extends State<Singproduct> {
  ValueNotifier <List<Data>> single =ValueNotifier([]);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    itemUser();
  }
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
          Container(height:220,
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
                 SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Wastage"),
                    Text(".27 kg")
                  ],
                ),
                 SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Final Weight"),
                    Text("0.50 kg")
                  ],
                ),
                 SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery charge :"),
                    Text("FREE",style: TextStyle(color: Colors.red),)
                  ],
                ),
                Divider(),
                 SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Final Price",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("0.769 * 580 = 446",style: TextStyle(fontWeight: FontWeight.w400),)
                  ],
                ),
              ],
            ),
          ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 120,
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
            child: ListView(
              children: [
                Text("Description",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text("The seer fish is a type of mackerel.They are pelagic fishes,fast swimmwers and predatory in nature that fights vigorously when caught. Seer fishes are mainly caught using hooks and lines. They are a delicacy in several regions of South India and Sri Lanka.The most expensive variety of seer fish is sold in Tamil Nadu, and is known as Vanjaram. Maharashtrians know it as Surmai, while the seafood lovers of Goa call it Iswan/Viswon. It is eaten in Kerala too and is sold as Neymeen across south Kerala.")
              ],
            ),
          ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text("Similar Products",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8,left: 8,right: 8),
            child: SizedBox(height: 360,
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
                               // Navigator.push(context, MaterialPageRoute(builder: (context) => Singproduct(),));
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
          ),
          TextButton(onPressed: (){}, child: Text("View More")),
          SizedBox(height: 50,),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  child: Container(height: 55,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.favorite),
                        Text("Save",style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  child: Container(height: 55,
                    decoration: BoxDecoration(color: Colors.black),
                    child: Center(child: Text("Add to cart",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  child: Container(height: 55,
                    decoration: BoxDecoration(color: Colors.red),
                    child: Center(child: Text("Buy Now",
                    style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                  ),
                ),
              )
            ],
          ),
          
        ],
      ),
    );
  }
void itemUser()async{
  final formdata = FormData.fromMap({
    "product_id":widget.index1,
    "user_id":608,
    "key":"koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc",
  });
  final result=await Apiclass().sproductUserApi(formdata);
  if(result!=null){
    if(result.status=="success"){
      setState(() {
      //   print(result.data);
      //   single.value.clear();
      //   single.value.addAll(result.data);
      });
    }
  }
}

}