//import 'package:figma_auth/AuthenticationPage/signup.dart';
import 'package:auth_figma/AuthenticationPage/signup.dart';
import 'package:auth_figma/notes/notespage1.dart';
import 'package:flutter/material.dart';


import '../CustomeWidgets/CustomeElevatedButton.dart';
import '../CustomeWidgets/CustomeTextField.dart';
class loginpage extends StatelessWidget {
  loginpage({super.key});
  final usernamecontroller=TextEditingController();
  final passwordcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(42),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome Back!",style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10,),
              Text("Login to continue",style: TextStyle(
                color: Colors.white,
                fontSize: 16,

              ),),
              SizedBox(height: 50,),
              Text("UserName",style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10,),
              Custometextfield(controller: usernamecontroller,),
              SizedBox(height: 40,),
              Text("Password",style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10,),
              Custometextfield(controller: passwordcontroller,),
              SizedBox(height: 15,),
              Row(children: [
                SizedBox(width: 10,),
                Icon(Icons.check_box_sharp,color: Colors.white,),
                SizedBox(width: 10,),
                Text("Remember me",style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(width: 100,),
                Text("Forget Password?",style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),),
              ],),
              SizedBox(height: 50,),
              Customelevatedbutton(text: "Log In", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>notespage1(Title:"")));})
              ,SizedBox(height: 30,),
              const Row(children: [
                SizedBox(width: 100,),
                Text("Don't have Account?",style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(width: 2,),
                Text("sign up",style: TextStyle(
                  color:  Color(0xFFDAC0A3),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  decoration: TextDecoration.underline,


                ),),
              ],),
            ],
          ),


        ),
      ),
    );
  }
}
