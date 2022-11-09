import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final String data = "516516164164";

  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      create: (context) => data,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(data),
          ),
          body: Level1(),
        ),
      ),
    );
  }
}

class Level1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level2(),
    );
  }
}

class Level2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level3(),
    );
  }
}

class Level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of(context));
  }
}


class MyText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text(Provider.of(context));
  }
}

class MyTextField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextField();
  }
}




