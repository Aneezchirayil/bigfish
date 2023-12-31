import 'package:bigfishaneez/Home/Screen/about.dart';
import 'package:bigfishaneez/Home/Screen/contact.dart';
import 'package:bigfishaneez/Home/Screen/refer.dart';
import 'package:bigfishaneez/Login/login.dart';
import 'package:flutter/material.dart';

class Settingpage extends StatefulWidget {
  const Settingpage({super.key});

  @override
  State<Settingpage> createState() => _SettingpageState();
}

class _SettingpageState extends State<Settingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.white70,
      body:Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black)
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("My Profile",style: TextStyle(fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 10,color: Colors.grey,))
                ],),
              ),
            ),SizedBox(height: 8,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black)
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("My Orders",style: TextStyle(fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 10,color: Colors.grey,))
                ],),
              ),
            ),SizedBox(height: 8,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black)
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Wallet",style: TextStyle(fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 10,color: Colors.grey,))
                ],),
              ),
            ),SizedBox(height: 8,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black)
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Refer & Earn",style: TextStyle(fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Referpage(),));
                  }, icon: Icon(Icons.arrow_forward_ios,size: 10,color: Colors.grey,))
                ],),
              ),
            ),SizedBox(height: 8,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black)
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("About Us",style: TextStyle(fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Aboutpage(),));
                  }, icon: Icon(Icons.arrow_forward_ios,size: 10,color: Colors.grey,))
                ],),
              ),
            ),SizedBox(height: 8,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black)
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("FAQ",style: TextStyle(fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 10,color: Colors.grey,))
                ],),
              ),
            ),SizedBox(height: 8,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black)
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Help",style: TextStyle(fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios,size: 10,color: Colors.grey,))
                ],),
              ),
            ),SizedBox(height: 8,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.black)
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Contact Us",style: TextStyle(fontWeight: FontWeight.bold),),
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Contactpage(),));
                  }, icon: Icon(Icons.arrow_forward_ios,size: 10,color: Colors.grey,))
                ],),
              ),
            ),SizedBox(height: 15,
            width: double.infinity,),
            ElevatedButton(onPressed: (){
             showDialog(context: context, builder: (context)=>AlertDialog(
              title: Text("Logout",style: TextStyle(fontWeight: FontWeight.bold)),
              content: Text("Do you want to Logout?",style: TextStyle(fontWeight: FontWeight.bold),),
              actions: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("NO")),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Loginpage(),));
                }, child: Text("YES"))
              ],
             ));
            }, child: Text("Logout",style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),)
          ],
        ),
      )
    );
  }
}