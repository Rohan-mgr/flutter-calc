import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/calculator_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List buttonLabels = ['1', '2', '3', '4', '5'];
  String text = "0";
  bool show = false;

  void handleCallBack(data) {
    print(data);
    setState(() {
      text = data;
      // show = !show;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text(
                text,
                style: TextStyle(fontSize: 32, color: Colors.black),
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: Container(
                height: 100,
                width: 100,
                child: Center(
                  child: ListView.builder(
                    itemCount: buttonLabels.length,
                    itemBuilder: (context, index) => CalculatorButton(
                      label: buttonLabels[index],
                      color: Colors.red,
                      callback: handleCallBack,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// GridView.builder(
//             itemCount: buttonLabels.length,
//             gridDelegate:
//                 SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
//             itemBuilder: (context, index) {
//               return Container(
//                 color: Colors.red,
//                 margin: EdgeInsets.all(10),
//                 child: Center(
//                   child: Text(
//                     buttonLabels.reversed.toList()[index],
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 30),
//                   ),
//                 ),
//               );
//             }),