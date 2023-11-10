import 'dart:async';

import 'package:bigfishaneez/Api/apiclass.dart';
import 'package:bigfishaneez/Home/home.dart';
import 'package:bigfishaneez/Login/sign.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

bool value =false;
final eemail=TextEditingController();
final ppassword=TextEditingController();
class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(children: [
              Expanded(flex: 3,
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/images/logo-white.png",),fit: BoxFit.fill)
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(decoration: BoxDecoration(
                  color: Colors.white),),
              )
            ],),
            Positioned(left: 40,
              bottom: 80,
              child: Container(
                height: 420,
                width: 280,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(
                    color: Colors.black,
                    
                  )]
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,right: 15),
                  child: Column(
                    children: [
                      TextField(
                        controller: eemail,
                      ),
                      TextField(
                        controller: ppassword,
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [TextButton(onPressed: (){}, child: Text("Forgot Password?"))],
                      ),
                      Row(children: [
                        Checkbox(value: value, onChanged: (newvalue){
                          setState(() {
                            value=newvalue!;
                          });
                        }),
                        Text("Remember Me",)
                      ],),
                      Container(width: double.infinity,
                      height: 40,
                        child: ElevatedButton(
                          onPressed: (){
                            loginUser();
                           
                          },
                           child: Text("Login"),
                           style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)
                            )
                           ),),
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("New User?"),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Signpage(),));
                          }, child: Text("SIGN UP"))
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        IconButton(onPressed: (){}, icon: Image.asset("assets/images/facebook icon.png")),
                        IconButton(onPressed: (){}, icon: Image.asset("assets/images/google icon.png"))],
                      ),
                      Center(child: Text("OR")),
                      TextButton(onPressed: (){}, child: Text("Guest Login"))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

void showErrorMessage(String message){
  MotionToast.error(
    dismissable: true,
    description: Text(message)).show(context);
}
void showSuccessMessage(String message){
  MotionToast.success(description: Text(message)).show(context);
}


void loginUser()async{
  final eemail1=eemail.text;
  final ppassword1=ppassword.text;

  if(eemail1.isEmpty){
    showErrorMessage("Enter valid email");
  }else if(ppassword1.isEmpty){
    showErrorMessage("Enter valid password");
  }
  else{
    final formdata=FormData.fromMap({
      'email':eemail1,
      'password':ppassword1,
      'key':"koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc"
    });

    final result = await Apiclass().loginUserApi(formdata);

    if(result!=null){
      if(result.status=="success"){
        showSuccessMessage(result.message!);
        Timer(Duration(seconds: 2), () { 
          Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
        });
         
      }else{
        showErrorMessage(result.message!);
      }
    }
  }
}


}