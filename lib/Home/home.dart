import 'dart:io';

import 'package:bigfishaneez/Home/Screen/cart.dart';
import 'package:bigfishaneez/Home/Screen/categories.dart';
import 'package:bigfishaneez/Home/Screen/homepage.dart';
import 'package:bigfishaneez/Home/Screen/settings.dart';
import 'package:bigfishaneez/Home/Screen/about.dart';
import 'package:bigfishaneez/Home/Screen/contact.dart';
import 'package:bigfishaneez/Home/Screen/edit.dart';
import 'package:bigfishaneez/Home/Screen/refer.dart';
import 'package:bigfishaneez/Login/login.dart';

import 'package:bigfishaneez/Home/Screen/Recipies/recipes.dart';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

var indexnum=0;
List screen=[Homescreen(),Categoriespage(),Settingpage()];

class _HomepageState extends State<Homepage> {
  File? _profileImage;

  Future<void> _pickProfileImage() async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('Choose from Gallery'),
                onTap: () {
                  _getImage(ImageSource.gallery);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.camera),
                title: Text('Take a Photo'),
                onTap: () {
                  _getImage(ImageSource.camera);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _getImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }
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
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        GestureDetector(
                          child:
                          _profileImage == null ?
                           CircleAvatar(
                            backgroundImage: AssetImage("assets/images/person.png"),
                            radius: 45,
                          ):
                          CircleAvatar(
                            backgroundImage: FileImage(_profileImage!),
                            radius: 45,
                          )
                        ),
                        Positioned(
                          top:60 ,
                          right: 0,
                          child: IconButton(onPressed: _pickProfileImage, icon: Icon(Icons.add_a_photo,size: 15,)))
                      ],
                    ),
                  ),
                  Text("Welcome to Healthy Fish",style: TextStyle(
                    fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),)
                ],
              )),
              ListTile(
                leading: Icon(Icons.login),
                title: Text("Login"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Loginpage(),));
                },
              ),
              ListTile(
                leading: IconButton(
                  onPressed: (){}, icon: Image.asset("assets/images/All products.png",
                  color: Colors.grey,)),
                title: Text("All Products"),
                trailing: Icon(Icons.arrow_drop_down,),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen(),));
                },
              ),
              ListTile(
                leading: Icon(Icons.local_library),
                title: Text("Refer & Earn"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Referpage(),));
                },
              ),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text("Edit Profile"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Editprofile(),));
                },
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
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Aboutpage(),));
                },
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: Text("Contact"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Contactpage(),));
                },
              ),
          ],
        ),
      ),
      appBar: AppBar(backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),
      toolbarHeight: 80,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,)),
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Cartpage(),));
          }, icon: Icon(Icons.shopping_cart),color: Colors.white,)
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
        body:screen[indexnum],
       bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: indexnum,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
           // backgroundColor: Colors.black
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: "Categories",
             // backgroundColor: Colors.black
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
              label: "Settings",
             // backgroundColor: Colors.black
              )
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