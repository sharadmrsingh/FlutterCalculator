import 'package:flutter/material.dart';
import './screen2.dart';
import './screen3.dart';

/*class DataPass {
  final String operator;
  final String value;
  //final String description;

  //const Todo(this.title, this.description);
  const DataPass(this.operator, this.value);
}*/

/*void main() {
  runApp(const MyApp(
    opera: 'Operator',
  ));
}*/

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Passing Data',
      home: MyApp(
        title: 'Calculator',
        //tod: [DataPass('operator', 'value')],
        //list:DataPass(
        //'Todo ',
        //'A description of what needs to be done for Todo',
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.title
      //required this.tod
      //required this.list
      })
      : super(key: key);
  final String title;
  //final List<DataPass> tod;
  //final todo;
  //final DataPass opera;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      home: Scaffold(
        backgroundColor: Colors.greenAccent.shade400,
        appBar: AppBar(
          backgroundColor: Colors.purple[900],
          // color: Theme.of(context).primaryColor,
          title: Text(title),
          //const Text(tod.operator)
          //Text('Calculator'),
        ),
        body: const buttons(//operator: ''
            // key: list[0],
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

class buttons extends StatelessWidget {
  const buttons({
    Key? key,
    //required this.operator
  }) : super(key: key);
  //final String operator;

  //const _buttonsState(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              'Flutter Calculator',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
          //Button-1
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              color: Colors.purple[900],
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyApp2(
                                    operator: '+',
                                    // data: '+',
                                  )),
                        );
                      },
                      child: const Text("ADDITION",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Button-2
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              color: Colors.purple[900],
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyApp2(
                                    operator: '-',
                                    // data: '+',
                                  )),
                        );
                      },
                      child: const Text("SUBTRACTION",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          /*We are removing the Elevated button as it is making the look of the calculator odd because of the only 1 button with different style.
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyApp2(
                              operator: '-',
                              //data: '-',
                            )),
                  );
                },
                child: const Text("SUBTRACTION",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black))),
          ),*/
          //Button-3
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              color: Colors.purple[900],
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyApp2(
                                    operator: '*',
                                    // data: '*',
                                  )),
                        );
                      },
                      child: const Text("MULTIPLICATION",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Button-4
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              color: Colors.purple[900],
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyApp2(
                                    operator: '/',
                                    //data: '/',
                                  )),
                        );
                      },
                      child: const Text("DIVISION",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          /*Removing Icon Button as it is not having multiply symbol
            IconButton(
              icon: const Icon(
                Icons.,
                color: Colors.blue,
                size: 36,
              ),
              tooltip: 'Multiplication',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyApp2()),
                );
              },
            ),*/
        ],
      ),
    );
  }
}
