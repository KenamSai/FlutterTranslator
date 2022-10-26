import 'package:flutter/material.dart';

class HomePageSum extends StatefulWidget {
  const HomePageSum({super.key});

  @override
  State<HomePageSum> createState() => _HomePageSumState();
}

class _HomePageSumState extends State<HomePageSum> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as List;
    return Scaffold(
      appBar: AppBar(
        title: Text("Sum"),
      ),
      body: Column(children: [
        Text("Sum is ${int.parse(args[0])+int.parse(args[1])}"),
        Center(
          child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("BACK")),
        ),
      ]),
    );
  }
}
