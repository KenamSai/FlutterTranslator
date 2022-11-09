import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppInputTextfield extends StatelessWidget {
  const AppInputTextfield(
      {super.key, required this.hintText, required this.iconData,required this.Controller});
  final String hintText;
  final Icon iconData;
  final TextEditingController Controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: Controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        prefixIcon: iconData
      ),
    );
  }
}
