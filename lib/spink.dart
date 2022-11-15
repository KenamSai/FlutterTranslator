import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class loader extends StatelessWidget {
  const loader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: SpinKitFadingFour(
            color: Colors.white,
            duration: Duration(milliseconds: 100),
          ),
        ),
      ),
    );
  }
}
