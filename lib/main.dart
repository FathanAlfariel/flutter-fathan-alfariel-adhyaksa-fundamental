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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
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
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(27.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Result: $result',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  TextField(
                    controller: firstController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Enter first number',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 25),
                  TextField(
                    controller: secondController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Enter second number',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // ADD Button
                      TextButton(
                        onPressed: () {
                          double a = double.parse(firstController.text);
                          double b = double.parse(secondController.text);
                          setState(() {
                            result = a + b;
                          });
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 154, 19, 233),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Text(
                            'ADD',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      // END ADD Button
                      // SUBSTRACT Button
                      TextButton(
                        onPressed: () {
                          double a = double.parse(firstController.text);
                          double b = double.parse(secondController.text);
                          setState(() {
                            result = a - b;
                          });
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 154, 19, 233),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Text(
                            'SUBSTRACT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      // END SUBSTRACT Button
                      // MULTIPLY Button
                      TextButton(
                        onPressed: () {
                          double a = double.parse(firstController.text);
                          double b = double.parse(secondController.text);
                          setState(() {
                            result = a * b;
                          });
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 154, 19, 233),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Text(
                            'MULTIPLY',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      // END MULTIPLY Button
                      // DIVIDE Button
                      TextButton(
                        onPressed: () {
                          double a = double.parse(firstController.text);
                          double b = double.parse(secondController.text);
                          setState(() {
                            result = a / b;
                          });
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 154, 19, 233),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          child: Text(
                            'DIVIDE',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      // END DIVIDE Button
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
