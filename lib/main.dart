import 'package:flutter/material.dart';
import 'package:flutter_application_3/bmicalutorpage.dart';

import 'package:flutter_application_3/resultscreen.dart';

 main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      home: TestPage(),
    );
  }
}
class TestPage extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      home: BMICalculatorPage(),
        
        
    );
  }
}