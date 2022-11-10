import 'package:first_flutter/cricketers/Notifiers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class UserDobComponent extends StatelessWidget {
  const UserDobComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: (() async {
            final selectedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(1947),
              lastDate: DateTime(2050),
            );
            dob.value = selectedDate!;
          }),
          child: Icon(Icons.calendar_month_outlined),
        ),
        ValueListenableBuilder(
          valueListenable: dob,
          builder: (context, value, child) {
            final date = DateFormat("MMM d, yyyy").format(value);
            return Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                date,
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
              ),
            );
          },
        )
      ],
    );
  }
}
