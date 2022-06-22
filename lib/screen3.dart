import 'package:flutter/material.dart';

import 'main.dart';

/*void main() {
  final String operator;
  runApp(MyApp3(
    operator: operator,
  ));
}*/

class MyApp3 extends StatelessWidget {
  const MyApp3({
    Key? key,
    required this.operator,
    required this.firstno,
    required this.secondno,
    required this.result,
    //required this.result2
  }) : super(key: key);
  final String operator, firstno, secondno, result; // result2;
  //final int result;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Colors.greenAccent.shade400,
        appBar: AppBar(
          backgroundColor: Colors.purple[900],
          title: const Text('Calculator'),
        ),
        body: Result(
          operator: operator,
          firstno: firstno,
          secondno: secondno,
          result: result,
          //result2: result2
        ),
      ),
    );
  }
}

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.operator,
    required this.firstno,
    required this.secondno,
    required this.result,
    //required this.result2
  }) : super(key: key);
  final String operator, firstno, secondno, result; //,result2;
  //final int result;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //For 1st number
            Padding(
              padding: EdgeInsets.only(top: 40, left: 20),
              child: Text(result
                  //"",
                  //textAlign: TextAlign.center,
                  ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyApp(
                                title: 'Calculator',
                              )),
                    );
                  },
                  child: const Text("START AGAIN",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black))),
            ),

            Padding(
              padding: EdgeInsets.only(top: 10, left: 20),
              child: Text(firstno
                  //"",
                  //textAlign: TextAlign.left,
                  ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20),
              child: Text(secondno
                  //"",
                  //textAlign: TextAlign.left,
                  ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 20),
              child: Text(
                operator,
                //"",
                //textAlign: TextAlign.left,
              ),
            ),
            /* Row(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your username',
                  ),
                ),
              ],
            )*/
          ],
        ),
      ),
    );
  }
}
