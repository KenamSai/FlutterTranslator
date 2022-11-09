import 'package:first_flutter/cricketers/Notifiers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grouped_checkbox/grouped_checkbox.dart';

class userRoleComponent extends StatelessWidget {
  const userRoleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Please Select Role :",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        ValueListenableBuilder(
          valueListenable: userRole,
          builder: (context, value, child) {
            return GroupedCheckbox(
              itemList: ["Batsmen", "Bowler", "Wicket Keeper", "All-Rounder"],
              
            );
          },
        )
      ],
    );
  }
}
