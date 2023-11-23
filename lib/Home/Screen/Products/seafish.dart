import 'package:bigfishaneez/Api/apiclass.dart';
import 'package:bigfishaneez/Api/model/productmodel.dart';
import 'package:bigfishaneez/Home/Screen/Products/singleitem.dart';
import 'package:bigfishaneez/Home/Screen/homepage.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Seafishpage extends StatefulWidget {
  String? index;
  String? pdname;
  Seafishpage({super.key, this.index,this.pdname});

  @override
  State<Seafishpage> createState() => _SeafishpageState();
}

class _SeafishpageState extends State<Seafishpage> {
  double start = 500; 
  double end = 1500; 
  var gvalue="";
  var value=[];
  ValueNotifier<List<Data>> product = ValueNotifier([]);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    productUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(widget.pdname.toString(),style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 500,
            child: ValueListenableBuilder(
                valueListenable: product,
                builder: (context, List<Data> newpd, child) {
                  return GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 250,
                        crossAxisSpacing: 20),
                    itemCount: newpd.length,
                    itemBuilder: (context, index) {
                      final pd = product.value[index];
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Singproduct(
                                    index1: pd.productId,
                                  ),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [BoxShadow(color: Colors.black)]),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: Column(
                                children: [
                                  Container(
                                    height: 75,
                                    child: Image.network(pd.image.toString()),
                                  ),
                                  Spacer(),
                                  Text(pd.name.toString()),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(pd.price.toString()),
                                        Text(
                                          pd.price.toString(),
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Colors.grey,
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Spacer()
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }),
          ),
          Spacer(),
          Container(
            height: 60,
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black)],
                color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    showModalBottomSheet(context: context, builder: (context) {
                      return Container(
                        height: 200,
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              child: Center(child: Text("Sort By",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),))),
                            Divider(),
                            ListTile(
                              title: Text("Price - Low to High"),
                              trailing: Radio(value: value, groupValue: gvalue, onChanged: (newval){
                                setState(() {
                                  gvalue=newval.toString();
                                });
                              }),
                            ),
                            ListTile(
                              title: Text("Price - High to Low"),
                              trailing: Radio(value: value, groupValue: gvalue, onChanged: (newval){
                                setState(() {
                                  gvalue=newval.toString();
                                });
                              }),
                            ),
                          ],
                        ),
                      );
                    },);
                  },
                  child: Container(
                    child: Row(
                      children: [Icon(Icons.sort), Text("SORT")],
                    ),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(context: context, builder: (context) {
                      return Container(
                        height:200 ,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Filter",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                  TextButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, child:Text("Done",style: TextStyle(fontWeight: FontWeight.bold),))
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text("Min Price",style: TextStyle(color: Colors.grey,fontSize: 10),),
                                      SizedBox(height: 5,),
                                      Text("Rs 100",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                   Column(
                                    children: [
                                      Text("Max Price",style: TextStyle(color: Colors.grey,fontSize: 10),),
                                       SizedBox(height: 5,),
                                      Text("Rs 2000",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            RangeSlider(
                              min: 100,
                              max: 2000,
                              activeColor: Colors.indigo,
                              inactiveColor: Colors.grey,
                              values:RangeValues(start,end), onChanged: (value){
                              setState(() {
                                start=value.start;
                                end=value.end;
                              });
                            })
                          ],
                        ),
                      );
                    },);
                  },
                  child: Container(
                    child: Row(
                      children: [Icon(Icons.sort), Text("FILTER")],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  void productUser() async {
    final formdata = FormData.fromMap({
      "user_id": vaal,
      "category_id": widget.index,
      "key":
          "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc",
    });
    final result = await Apiclass().produtUserApi(formdata);
    if (result != null) {
      if (result.status == "success") {
        setState(() {
          print(result.data);
          product.value.clear();
          product.value.addAll(result.data!);
        });
      }
    }
  }
}
