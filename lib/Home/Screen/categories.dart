import 'package:bigfishaneez/Home/Products/product.dart';
import 'package:bigfishaneez/Home/Screen/homepage.dart';

import 'package:flutter/material.dart';

class Categoriespage extends StatefulWidget {
  const Categoriespage({super.key});

  @override
  State<Categoriespage> createState() => _CategoriespageState();
}

class _CategoriespageState extends State<Categoriespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Padding(
      //   padding: const EdgeInsets.only(top: 35),
      //   child: SizedBox(
      //           height: 360,
      //           child: GridView.builder(
                  
      //             scrollDirection: Axis.horizontal,
      //             gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
      //               mainAxisSpacing: 5,
      //               crossAxisSpacing: 5,
      //             crossAxisCount: 2) , 
      //             itemCount: Categories1.length,
      //           itemBuilder: (context, index) {
      //             return Padding(
      //               padding: const EdgeInsets.all(10),
      //               child: InkWell(
      //                 onTap: () {
      //                   Navigator.push(context, MaterialPageRoute(builder: (context) => Productpage(),));
      //                 },
      //                 child: Container(
      //                   // height: 200,
      //                   // width: 200,
      //                   decoration: BoxDecoration(
      //                     color: Colors.white,
      //                     boxShadow: [BoxShadow(
      //                       color: Colors.black,
                            
      //                     )]
      //                   ),
      //                   child: Padding(
      //                     padding: const EdgeInsets.all(10.0),
      //                     child: Column(
      //                       children: [
      //                         Container(
      //                           height: 100,
      //                           child: Image(image: AssetImage("assets/images/ff.jpeg")),
      //                         ),
      //                         SizedBox(height: 10,),
      //                         Text(Categories1[index]),
      //                       ],
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             );
      //           },),
      //         ),
      // ),
    );
  }
}