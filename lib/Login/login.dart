import 'package:bigfishaneez/Home/home.dart';
import 'package:bigfishaneez/Login/sign.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

bool value =false;

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
                      TextField(),
                      TextField(),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
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
}