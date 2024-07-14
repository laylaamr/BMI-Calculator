import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/resultscreen.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI Calculator',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: BMICalculatorPage(),
    );
  }
}
  bool isMale = true;
  int height = 180;
  int weight = 60;
  int age = 25;
  late double bmi ;
  String result ='Normal';
  String message = "Great job! Your BMI is in the normal range. Maintain a balanced diet and regular physical activity to keep up your good health."
;


class BMICalculatorPage extends StatefulWidget {
  @override
  _BMICalculatorPageState createState() => _BMICalculatorPageState();
}

class _BMICalculatorPageState extends State<BMICalculatorPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF1D1E33),
      appBar: AppBar(
        title: Text('BMI Calculator',style: TextStyle(color: Colors.white, fontSize: 30),),
        centerTitle: true,
        backgroundColor: Color(0xFF1D1E33),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: isMale ? Color(0xFF1D1E33) : Color(0xFF111328),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.male,
                            size: 80.0,
                            color: Colors.white,
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'MALE',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: isMale ? Color(0xFF111328) : Color(0xFF1D1E33),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.female,
                            size: 80.0,
                            color: Colors.white,
                          ),
                          SizedBox(height: 15.0),
                          Text(
                            'FEMALE',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color(0xFF8D8E98),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: TextStyle(
                          fontSize: 50.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        ' cm',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF8D8E98),
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
             Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                        Text(
 weight.toString(),
style: const TextStyle(
 fontSize: 50,
 fontWeight: FontWeight.bold,
color: Colors.white),
 ),
Row(
 children: [
 Expanded(
 child: FloatingActionButton(
 heroTag: 'uniqueHeroTag1',
onPressed: () {
 weight--;
 setState(() {});
 },
child: const Icon(Icons.remove)),
 ),
Expanded(
 child: FloatingActionButton(
   heroTag: 'uniqueHeroTag2',
 onPressed: () {
 weight++;
setState(() {});
 },
child: const Icon(Icons.add)),
 ),
 ],
 ),

          
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'AGE',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                      Text(
 age.toString(),
 style: const TextStyle(
 fontSize: 50,
fontWeight: FontWeight.bold,
color: Colors.white),
 ),
Row(
 children: [
 Expanded(
 child: FloatingActionButton(
 heroTag: 'uniqueHeroTag3',
onPressed: () {
 age--;
 setState(() {});
 },
child: const Icon(Icons.remove)),
 ),
Expanded(
 child: FloatingActionButton(
 heroTag: 'uniqueHeroTag4',
 onPressed: () {
 age++;
setState(() {});
 },
 child: const Icon(Icons.add)),
 ),
 ],
 ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
            child: TextButton(
              onPressed: () { 
                
 bmi = weight / pow((height / 100), 2);
 if (bmi < 18.5) {
 result = 'UNDERWEIGHT';
 message="Your BMI indicates that you are underweight. Consider a nutritious diet and consult with a healthcare provider to ensure you are on the right track.";

 } else if (bmi < 25) {
 result = 'NORMAL';
 message="Great job! Your BMI is in the normal range. Maintain a balanced diet and regular physical activity to keep up your good health.";

 } else {
 result = 'OVERWEIGHT';
 message ="Your BMI suggests that you are overweight. Incorporating regular exercise and a healthy diet can help you reach a healthier weight.";
 }
               Navigator.of(context)
    .push(MaterialPageRoute(builder: (context) => ResultScreen(bmi: bmi ,result:result, message: message,)));
              },
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
    
}
}
