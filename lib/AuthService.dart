import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Authservice{


  Future<void>signUp({
    required  String email,
    required  String password,
    required   BuildContext context,
  })async{
    String emsg= "";
    try{
     await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password);
    } on FirebaseAuthException catch(e){
      if(e.code=="email-already-in-use"){
        emsg="This account is already Created";
      }
      else if(e.code=="weak-password"){
        emsg="The Password is Weak";
      }
      else{
        emsg=e.code;
      }
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content:Text(emsg,style: TextStyle(color: Colors.white),))
      );
    }
    catch(e){}
  }
  Future<void>login({
    required  String email,
    required  String password,
    required   BuildContext context,
  })async{
    String emsg= "";
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password);
    } on FirebaseAuthException catch(e){
      if(e.code=="email-already-in-use"){
        emsg="This account is already Created";
      }
      else if(e.code=="weak-password"){
        emsg="The Password is Weak";
      }
      else{
        emsg=e.code;
      }
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content:Text(emsg,style: TextStyle(color: Colors.white),))
      );
    }
    catch(e){}
  }
}