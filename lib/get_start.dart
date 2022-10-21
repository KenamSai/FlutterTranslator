import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class get_start extends StatefulWidget {
  const get_start({super.key});

  @override
  State<get_start> createState() => _get_startState();
}

class _get_startState extends State<get_start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get started"),
      ),
      body: Center(
          child: Column(
        children: [
          TextButton(
            onPressed: () {
              // Navigator.of(context)
              //  .push(MaterialPageRoute(builder: (context) =>));
            },
            child: Text("sign in"),
          ),
          TextButton(
            onPressed: () {},
            child: Text("sign up"),
          ),
        ],
      )),
    );
  }
}
