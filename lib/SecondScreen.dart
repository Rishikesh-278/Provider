import 'package:flutter/material.dart';

class MySecondScreen extends StatefulWidget {
  MySecondScreen({Key? key}) : super(key: key);

  @override
  State<MySecondScreen> createState() => _MySecondScreenState();
}

class _MySecondScreenState extends State<MySecondScreen> {
  int Counter = 0;

  void Increment()
  {
    setState(() {
      Counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
      ),
      body: Center(
        child: Column(
          children: <Widget> [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$Counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:  Increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}
