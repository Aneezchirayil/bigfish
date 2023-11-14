import 'package:bigfishaneez/Api/apiclass.dart';
import 'package:bigfishaneez/Api/model/homemodel.dart';
import 'package:bigfishaneez/Home/Products/product.dart';
import 'package:bigfishaneez/Home/Products/seafish.dart';
import 'package:bigfishaneez/Home/Screen/categories.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

final List<Color> colors = [Colors.pink, Colors.lime, Colors.lightBlue];
List imag = [
  "assets/images/fp1.jpg",
  "assets/images/fp2.jpg",
  "assets/images/fp3.jpg"
];
var Categories1 = ["freshfish", "seerfish", "crab", "pomfret"];

class _HomescreenState extends State<Homescreen> {
  ValueNotifier<List<Categories>> catelist = ValueNotifier([]);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homeUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      image: DecorationImage(
                          image: AssetImage(imag[index]), fit: BoxFit.fill),
                      //color: colors[index],
                      borderRadius: BorderRadius.circular(15)),
                ),
              );
            },
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Categoriespage(),
                          ));
                    },
                    child: Text("View All"))
              ],
            ),
          ),
          SizedBox(
            height: 360,
            child: ValueListenableBuilder(
                valueListenable: catelist,
                builder: (context, List<Categories> newcate, child) {
                  return GridView.builder(
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        crossAxisCount: 2),
                    itemCount: newcate.length,
                    itemBuilder: (context, index) {
                      final categorie = catelist.value[index];
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Seafishpage(
                                    index: categorie.categoryId,
                                  ),
                                ));
                          },
                          child: Container(
                            // height: 200,
                            // width: 200,
                            decoration:
                                BoxDecoration(color: Colors.white, boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                              )
                            ]),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                  Container(
                                    height: 100,
                                    child: Image(
                                        image: NetworkImage(
                                            categorie.image.toString())),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(categorie.name.toString()),
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
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Fresh Arrival",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextButton(onPressed: () {}, child: Text("View All"))
              ],
            ),
          ),
          SizedBox(
            height: 360,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 5, crossAxisSpacing: 5),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [BoxShadow(color: Colors.black)]),
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Container(
                            height: 75,
                            child: Image.asset("assets/images/ayala img.jpeg"),
                          ),
                          Text(
                              "Indian Mackerel/ Ayala / Bangda / Aiyla(large 6+ count/kg)"),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Rs. 299.00/500g"),
                                Text(
                                  "Rs 309.00",
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey,
                                      fontSize: 10),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void homeUser() async {
    final formdata = FormData.fromMap({
      "user_id": 608,
      "key":
          "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc"
    });
    final result = await Apiclass().homeUserApi(formdata);
    if (result != null) {
      if (result.status == "success") {
        setState(() {
          catelist.value.clear();
          catelist.value.addAll(result.data!.categories!);
        });
      }
    }
  }
}
