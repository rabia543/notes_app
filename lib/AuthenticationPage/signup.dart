
import 'package:flutter/material.dart';

import '../AuthService.dart';
import '../CustomeWidgets/CustomeElevatedButton.dart';
import '../CustomeWidgets/CustomeTextField.dart';
import 'FrontPage.dart';
import 'loginpage.dart';
class signuppage extends StatefulWidget {
  signuppage({super.key});

  @override
  State<signuppage> createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  final fullnamecontroller=TextEditingController();

  final emailcontroller=TextEditingController();

  final passwordcontroller=TextEditingController();

  final phonenocontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF102C57),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:Color(0xFF102C57),
        title: Text("CodeChamp.in",style: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),),actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Icon(Icons.menu,color: Colors.white,size: 36,),
        )
      ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(42),
        child:SingleChildScrollView (
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Create Account Now!",style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 40,),
              Text("Full Name",style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10,),
              Custometextfield(controller: fullnamecontroller,),
              SizedBox(height: 30,),
              Text("Email",style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10,),
              Custometextfield(controller:emailcontroller ,),
              SizedBox(height: 30,),
              Text("Password",style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10,),
              Custometextfield(controller: passwordcontroller,),
              SizedBox(height: 30,),Text("Phone No",style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10,),
              Custometextfield(controller: phonenocontroller,),
              SizedBox(height: 50,),
             Customelevatedbutton(text: "Sign up", onPressed: ()async{
               await  Authservice().signUp(email:emailcontroller.text  , password: passwordcontroller.text, context: context);
                Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));})
              /*ElevatedButton(
                onPressed: () async {
                  // Debugging: Print the values of the text controllers
                  print("Full Name: ${fullnamecontroller.text}");
                  print("Email: ${emailcontroller.text}");
                  print("Password: ${passwordcontroller.text}");
                  print("Phone No: ${phonenocontroller.text}");
                  if(fullnamecontroller.text.isNotEmpty&&phonenocontroller.text.isNotEmpty) {
                    await Authservice().signUp(email: emailcontroller.text, password: passwordcontroller.text, context: context);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>frontPage()));
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Please enter credentials correctly')),
                    );
                  }
                },
                child:
                Text("Signup",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown[900],
                    minimumSize: Size(250,50)
                )
                ,),*/

            ],
          ),
        ),

      ),
    );
  }
}
