import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class textfield extends StatelessWidget {
  const textfield({super.key,required this.hint,required this.logo ,required this.cont});
  final String hint;
  final Icon logo;
  final TextEditingController cont;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: cont,
      decoration: InputDecoration(
        prefixIcon: logo,
        hintText:hint ,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
