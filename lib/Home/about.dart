import 'package:flutter/material.dart';

class Aboutpage extends StatefulWidget {
  const Aboutpage({super.key});

  @override
  State<Aboutpage> createState() => _AboutpageState();
}

class _AboutpageState extends State<Aboutpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("About Company"),
      ),
      body:Padding(
        padding: const EdgeInsets.only(top: 25,left: 25,right: 25),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(
              color: Colors.black
            )]
          ),
          child: 
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(alignment: Alignment.center,
                  child: Text("HealthFish Pvt Ltd",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 15),)),
                SizedBox(
                  height: 30,
                ),
                Text("What is Lorem Ipsum",style: TextStyle(color: Colors.grey),),
                SizedBox(height: 10,),
                Text("Lorem ipsum, placeholder or dummy text used in typesetting and graphic design for previewing layouts. It features scrambled Latin text, which emphasizes the design over content of the layout. It is the standard placeholder text of the printing and publishing industries",
                style: TextStyle(color: Colors.grey)),
                SizedBox(height: 10,),
                Text("Where does it come from",style: TextStyle(color: Colors.grey)),
                SizedBox(height: 10,),
                Text("The first use of Lorem ipsum is uncertain, though some have suggested the 1500s, when sections of Classical works were often used as dummy texts by printers to make type specimen books demonstrating different fonts. According to this account, the material was chosen based on Latin’s familiarity as a lingua franca across Europe and the popularity of Classical works during the Middle Ages. Whenever it was first created, Lorem ipsum did not gain widespread popularity until the 1960s, when Letraset manufactured preprinted transfer sheets that featured the passage for use in the advertising industry. The sheets allowed typesetters and designers to cut out and rub on the text in various fonts, sizes, and formats for mock-ups and prototypes.",
                style: TextStyle(color: Colors.grey))
          
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}