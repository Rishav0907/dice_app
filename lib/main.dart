import 'dart:math';
import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.red,
    appBar: AppBar(
      title: Text('Dicee'),
      backgroundColor: Colors.red,
    ),
    body: DicePage(),
  )));
}

// class DicePage extends StatelessWidget {
//   @override
//   int LeftDiceNumber=5;
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//                 child: FlatButton(
//                   child: Image(image: AssetImage('images/dice$LeftDiceNumber.png')),
//                   onPressed: () { print('hello');   },
//                 ),
//           ),
//           // SizedBox(
//           //   width: 40,
//           // ),
//           Expanded(
//             child: FlatButton(
//               child: Image(image: AssetImage('images/dice1.png')),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeNum() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeNum();
              },
              child: Image(image: AssetImage('images/dice$leftDiceNumber.png')),
            ),
          ),
          // SizedBox(
          //   width: 40,
          // ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                  changeNum();
              },
              child:
                  Image(image: AssetImage('images/dice$rightDiceNumber.png')),
            ),
          ),
        ],
      ),
    );
  }
}
