import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class snack_bar extends StatelessWidget {
  const snack_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: (() {
            var snack_bar = SnackBar(
              width: 400,
              behavior: SnackBarBehavior.floating,
              duration: Duration(milliseconds: 1000),
              content: Text("Added to Favorites."),
              backgroundColor: Colors.indigo,
            );
            ScaffoldMessenger.of(context).showSnackBar(snack_bar);
          }),
          child: Text("ok"),
        ),
      ),
    );
  }
}
