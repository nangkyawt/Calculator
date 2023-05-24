import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController num1Ctrl = TextEditingController();
  TextEditingController num2Ctrl = TextEditingController();
  int? result = 0, num1 = 0, num2 = 0;
  add() {
    setState(() {
      num1 = int.parse(num1Ctrl.text);
      num2 = int.parse(num2Ctrl.text);
      result = num1! + num2!;
    });
  }

  sub() {
    setState(() {
      num1 = int.parse(num1Ctrl.text);
      num2 = int.parse(num2Ctrl.text);
      result = num1! - num2!;
    });
  }

  mul() {
    setState(() {
      num1 = int.parse(num1Ctrl.text);
      num2 = int.parse(num2Ctrl.text);
      result = num1! * num2!;
    });
  }

  div() {
    setState(() {
      num1 = int.parse(num1Ctrl.text);
      num2 = int.parse(num2Ctrl.text);
      result = num1! ~/ num2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          children: [
            Text(
              "Result: $result",
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox (
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: num1Ctrl,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text("First Num:"),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: num2Ctrl,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text("Second Num:"),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      add();
                      num1Ctrl.clear();
                      num2Ctrl.clear();
                    },
                    child: Text("Add")),
                ElevatedButton(
                    onPressed: () {
                      sub();
                      num1Ctrl.clear();
                      num2Ctrl.clear();
                    },
                    child: Text("Sub")),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      mul();
                      num1Ctrl.clear();
                      num2Ctrl.clear();
                    },
                    child: Text("Mul")),
                ElevatedButton(
                    onPressed: () {
                      div();
                      num1Ctrl.clear();
                      num2Ctrl.clear();
                    },
                    child: Text("Divi")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
