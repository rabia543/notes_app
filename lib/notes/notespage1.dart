import 'package:flutter/material.dart';

import 'newPad.dart';

class notespage1 extends StatelessWidget {
  String Title;
   notespage1({
    Key? key,
    required this.Title,
}):super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final List<String> daysOfWeek = ['M', 'T', 'W', 'T', 'F', 'S','S'];
    final List<Color> listofcolor=[Colors.cyanAccent,Colors.purple,Colors.orange,Colors.yellow,Colors.green,Colors.pink,Colors.deepPurple];
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            width: _size.width * 0.20,
            child: Container(
             color: Color(0xFF1E3A8A), // Adjusted color
              child: Column(
                children: [
                  SizedBox(height: 40,),
                  Icon(Icons.menu),
                  SizedBox(height: 20,),
                 Container(
                    height: _size.height*0.70,

                    child: ListView.builder(
                      itemCount: daysOfWeek.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ColoredBox(
                            color: Colors.green,
                            child: Material(
                              child: ListTile(
                                title: Text(daysOfWeek[index],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                tileColor: listofcolor[index],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height:60,),
                  Icon(Icons.settings,size: 45,),

                ],
              )
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            width: _size.width * 0.80,
            child: Container(
              color: Colors.blue[900],
             child:  Column(
               children: [
                 SizedBox(height: 40,),
                 CircleAvatar(
                   child: Icon(Icons.person,size: 50,),
                   maxRadius: 50,
                   foregroundColor: Colors.blue,
                   backgroundColor: Colors.black,
                 ),
                 Text("Note Pad",style: TextStyle(color: Colors.white,fontSize: 40),),
                 SizedBox(height: 10,),
                 Padding(
                   padding: const EdgeInsets.only(left: 210),
                   child: GestureDetector(
                     onTap:(){
                       Navigator.push(context, MaterialPageRoute(builder:(context)=>MyHomePage()));
                     },
                       child: Icon(Icons.add,size: 60,)),
                 ),
                 SizedBox(height: 10,),
                 Container(
                     height: 200,
                     width: 250,
                     color: Color(0xFF1E3A8A),
                     child: Padding(
                       padding: const EdgeInsets.all(7.0),
                       child: Column(
                         children: [Row(
                           children: [
                             Text(Title,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                             SizedBox(width: 60,),
                             Icon(Icons.navigate_next,color: Colors.grey,)
                           ],),
                           SizedBox(height: 80,),
                           Row(children: [
                             SizedBox(width: 70,),
                             GestureDetector(
                               onTap: (){
                                 Navigator.push(context, MaterialPageRoute(builder:(context)=>MyHomePage()));
                               }, child: Icon(Icons.edit,color: Colors.grey,size: 35,)),
                             SizedBox(width: 10,),
                             GestureDetector(
                                 onTap: (){
                                   Navigator.push(context, MaterialPageRoute(builder:(context)=>MyHomePage()));
                                 },
                                 child: Icon(Icons.delete,color: Colors.grey,size:35 ,)),
                           ],)
                         ],
                       ),
                     )
                 )

               ],
             ),
            ),
          ),
        ],
      ),
    );
  }
}



