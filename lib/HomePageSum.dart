import 'package:first_flutter/LoginTextSum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePageSum extends StatefulWidget {
  const HomePageSum({super.key});

  @override
  State<HomePageSum> createState() => _HomePageSumState();
}

class _HomePageSumState extends State<HomePageSum> {
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text("Sum"),
      ),
      body: Column(children: [
        Text(args["name"]),
        Center(
          child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LoginTextSum()),
                );
              },
              child: Text("BACK")),
        ),
      ]),
    );
  }
}
