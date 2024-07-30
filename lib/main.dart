import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'AuthenticationPage/FrontPage.dart';

void main()async {
  runApp(const MyApp());
WidgetsFlutterBinding.ensureInitialized();
// await Firebase.initializeApp();
  await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: 'AIzaSyBiWDSY33IXqMwSc9RYXH_8Om2caSThvmo',
        appId: '1:274878112636:android:ebfa21568bf6212dadfaf9',
        messagingSenderId: 'sendid',
        projectId: 'auth-figma',
        storageBucket: 'auth-figma.appspot.com',
      )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFF102C57),
        appBar: AppBar(
          backgroundColor: Color(0xFF102C57),
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
        body:frontPage(),
      ),

    );
  }
}





