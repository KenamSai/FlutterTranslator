import 'package:first_flutter/cricketers/Notifiers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:group_radio_button/group_radio_button.dart';

class userGenderComponent extends StatelessWidget {
  userGenderComponent({super.key});

  final List<String> genderData = ["Male","Female","Others"];
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 11),
          child: Text(
            "Gender :",
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
        ),
        ValueListenableBuilder(
          valueListenable: userGender,
          builder: (context, value, child) {
            return RadioGroup<String>.builder(
              direction: Axis.horizontal,
              activeColor: Colors.green,
              groupValue: value,
              onChanged: (value) {
                userGender.value = value!;
              },
              items: genderData,
              itemBuilder: (item) => RadioButtonBuilder(
                item,
              ),
              
            );
          },
        )
      ],
    );
  }
}
