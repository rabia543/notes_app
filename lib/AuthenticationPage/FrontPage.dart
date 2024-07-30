
//import 'package:figma_auth/AuthenticationPage/signup.dart';
import 'package:auth_figma/AuthenticationPage/signup.dart';
import 'package:flutter/material.dart';
import '../CustomeWidgets/CustomeElevatedButton.dart';
import 'loginpage.dart';

class frontPage extends StatelessWidget {
  const frontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 60,),
          Image.asset('assets/images/img1.png',scale:1 ,),
          SizedBox(height: 20,),
          Text("Hello,Welcome!",style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 10,),
          Text("welcome to codechamp.in top platform \n                        to coders",style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),),
          SizedBox(height: 30,),
          Customelevatedbutton(text: "Log in", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>loginpage()));}),
          SizedBox(height: 20,),
          Customelevatedbutton(text: "Sign up", onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>signuppage()));}),
          SizedBox(height: 20,),
          SizedBox(height: 60,),
          Text("or via social media",style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),),
          SizedBox(height: 10,),
          Row(children: [
            SizedBox(width: 172,),
            Container(
              height: 26,
              width: 26,
              child: Text("  f",style:TextStyle(
                color:Colors.indigo[900],
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ), ),decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:  Color(0xFFDAC0A3),

            ),),
            SizedBox(width: 10,),
            Container(
              height: 26,
              width: 26,
              child: Text(" G",style:TextStyle(
                color:Colors.indigo[900],
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ), ),decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:  Color(0xFFDAC0A3),

            ),),SizedBox(width: 10,),
            Container(
              height: 26,
              width: 26,
              child: Text(" in",style:TextStyle(
                color:Colors.indigo[900],
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ), ),decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:  Color(0xFFDAC0A3),

            ),),

          ]
          ),
        ],
      ),
    );
  }
}
