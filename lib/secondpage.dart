import 'package:flutter/material.dart';


class Secondpage extends StatelessWidget{
const Secondpage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold( 
      appBar: AppBar(title: Text("Welcome to Secondpage !! "),),
        body: ListView(children: [
 Center(child:
 Text("Secondpage",
 style: TextStyle(fontSize: 30),
 textAlign: TextAlign.center,
 ),)


        ],)
     
        
        
    );
  }
}