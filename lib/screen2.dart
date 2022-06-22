import 'package:flutter/material.dart';
import './main.dart';
import './screen3.dart';

//void main() {
//  runApp(const MyApp2(
//    data: '',
// ));
//}

class MyApp2 extends StatelessWidget {
  //final DataPass data;

  //final String? data;
  const MyApp2({Key? key, required this.operator
      //required this.data
      })
      : super(key: key);
  final String operator;
  //final data = ModalRoute.of(context)!.settings.arguments as buttons;
  //final data;
  @override
  Widget build(BuildContext context) {
    // final data = ModalRoute.of(context)!.settings.arguments as buttons;
    //print(data);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Colors.greenAccent.shade400,
        appBar: AppBar(
          backgroundColor: Colors.purple[900],
          title: Text('Calculator'
              //Running code of Data passing-Text(operator
              //const Text(operator
              //'Calculator'
              ),
          // color: Theme.of(context).primaryColor,
        ),
        body: screen2(operator: operator
            //const screen2(operator:operator
            //data: data,
            ),
        //Container(

        /*const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              'Flutter Calculator',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),*/
        //),
      ),
    );
  }
}

class screen2 extends StatelessWidget {
  screen2({Key? key, required this.operator}) : super(key: key);
  final String operator;
  //final String result = '';
  double result = 0;
  //int result = 0;
  //double result2 = 0;
  TextEditingController _firstno = TextEditingController();
  TextEditingController _secondno = TextEditingController();

  double add(String operator, String _firstno, String _secondno) {
    double first = double.parse(_firstno);
    double second = double.parse(_secondno);
    double result = first + second;
    return result;
  }

  double sub(var operator, var _firstno, var _secondno) {
    double first = double.parse(_firstno);
    double second = double.parse(_secondno);
    double result = first - second;
    return result;
  }

  double mul(var operator, var _firstno, var _secondno) {
    double first = double.parse(_firstno);
    double second = double.parse(_secondno);
    double result = first * second;
    return result;
  }

  double div(var operator, var _firstno, var _secondno) {
    double first = double.parse(_firstno);
    double second = double.parse(_secondno);
    /* first = int.parse(_firstno);
    int second = int.parse(_secondno);*/
    double result = first / second;
    return result;
  }

  //TextEditingController _phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //For 1st number
          const Padding(
            padding: EdgeInsets.only(top: 40, left: 20),
            child: Text(
              "First Number",
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: TextFormField(
              controller: _firstno,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter 1st number',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              "Second Number",
              textAlign: TextAlign.left,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: TextFormField(
              controller: _secondno,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Enter 2nd number',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: ElevatedButton(
                onPressed: () {
                  if (operator.contains('+')) {
                    result = add(operator, _firstno.text, _secondno.text);
                  } else if (operator.contains('-')) {
                    result = sub(operator, _firstno.text, _secondno.text);
                  } else if (operator.contains('*')) {
                    result = mul(operator, _firstno.text, _secondno.text);
                  } else if (operator.contains('/')) {
                    result = div(operator, _firstno.text, _secondno.text);
                  }
                  //var res=add(operator, _firstno.text, _secondno.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyApp3(
                              operator: operator,
                              firstno: _firstno.text,
                              secondno: _secondno.text,
                              result: result.toString(),
                              //result2:result2.toString()
                            )), //const MyApp3(operator:operator)),
                  );
                },
                child: const Text("CALCULATE",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black))),
          ),
          //const
          Padding(
            padding: EdgeInsets.only(top: 10, left: 20),
            child: Text(operator
                //''
                // data,
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
    );
  }
}
