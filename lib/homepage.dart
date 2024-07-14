import 'package:flutter/material.dart';
import 'package:flutter_application_3/secondpage.dart';


class Homepage extends StatelessWidget{
const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold( 
      
      appBar: AppBar( 
        title: Text("BMI calculator "),
      
        ),
        
        body:
         ListView(
          
          children: [
 Center(child:
 Text("homepage",
 style: TextStyle(fontSize: 30),
 textAlign: TextAlign.center,
 ),),
 MaterialButton(
    color : Colors.red,
  onPressed: (){
    Navigator.of(context)
    .push(MaterialPageRoute(builder: (context) => Secondpage()));
 },
child:Text("Go to secondpage")
 )
        ],)
     
        
        
    );
  }
}