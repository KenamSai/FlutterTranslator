import 'dart:ui';

import 'package:first_flutter/cricketers/Notifiers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: counter,
      builder: (context, value, child) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (() {
                counter.value += 5;
              }),
              child: Text("+"),
            ),
            Text(
              "Value is $value",
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            TextButton(
              onPressed: (() {
                counter.value -= 5;
              }),
              child: Text(
                "-",
              ),
            )
          ],
        );
      },
    );
  }
}
