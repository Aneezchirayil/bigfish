import 'package:bigfishaneez/Api/apiclass.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

class Signpage extends StatefulWidget {
  const Signpage({super.key});

  @override
  State<Signpage> createState() => _SignpageState();
}
final fname=TextEditingController();
final lname=TextEditingController();
final email=TextEditingController();
final phone=TextEditingController();
final password=TextEditingController();
class _SignpageState extends State<Signpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10,left:10,right: 10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextField(
                controller: fname,
                decoration: InputDecoration(
                  labelText: "First Name"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextField(
                controller: lname,
                decoration: InputDecoration(
                  labelText: "Last Name"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  labelText: "E-mail"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextField(
                controller: phone,
                decoration: InputDecoration(
                  labelText: "Mobile Number"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Divider(),
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(
                labelText: "Password",
                suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility))
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.visibility))
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(height:45,
                child: ElevatedButton(
                  onPressed: (){
                    registerUser();
                  },
                   child: Text("Register"),
                   style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.red
                   ),),
              ),
            )
          ],
        ),
      ),
    );
  }
  void showErrorMessage(String message){
    MotionToast.error(
      description: Text(message)).show(context);
  }
  void showSuccessMessage(String message){
    MotionToast.success(description: Text(message)).show(context);
  }

  void registerUser()async{
    final fname1=fname.text;
    final lname1=lname.text;
    final email1=email.text;
    final phone1=phone.text;
    final password1=password.text;

    if(fname1.isEmpty){
      showErrorMessage("First name is required");
    }else if(lname1.isEmpty){
      showErrorMessage("Last name is required");
    }else if(email1.isEmpty){
      showErrorMessage("Email is required");
    }else if(phone1.isEmpty){
      showErrorMessage("Phone is required");
    }else if(password1.isEmpty){
      showErrorMessage("Password is required");
    }
    else{
      final formdat=FormData.fromMap({
        'firstname':fname1,
        'lastname':lname1,
        'email':email1,
        'telephone':phone1,
        'password':password1,
        'type':"0",
        'referal_code':"0",
        'key':"koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc"
      });

      final result= await Apiclass().registerUserApi(formdat);


      if(result!=null){
        if(result.status=="success"){
          showSuccessMessage(result.message!);
        }else{
          showErrorMessage(result.message!);
        }
      }
    }
  }
}