import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class inputTextField extends StatelessWidget {
  const inputTextField(
      {super.key,
      required this.controller,
      required this.hinttext,
      required this.prefixIcon,
      this.textColor,
      this.isSecured,
      this.isVisible,
      this.onTap});
  final TextEditingController controller;
  final String hinttext;
  final Widget prefixIcon;
  final Color? textColor;
  final bool? isSecured;
  final bool? isVisible;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        obscureText: this.isVisible ?? false,
        decoration: InputDecoration(
          suffixIcon: this.isSecured == true
              ? GestureDetector(
                  onTap: (() {
                    onTap!();
                  }),
                  child: Icon(this.isVisible == true
                      ? Icons.remove_red_eye_outlined
                      : Icons.read_more_outlined),
                )
              : null,
          hintText: hinttext,
          hintStyle: TextStyle(color: textColor ?? Colors.black),
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      margin: EdgeInsets.symmetric(vertical: 10.0),
    );
  }
}
