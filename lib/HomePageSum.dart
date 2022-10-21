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
    return Scaffold(
      appBar: AppBar(
        title: Text("Sum"),
      ),
      body: Center(child: Text("Sum is")),
    );
  }
}
