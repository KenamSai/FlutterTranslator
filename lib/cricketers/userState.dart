import 'package:first_flutter/cricketers/Notifiers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class userState extends StatelessWidget {
  const userState({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> stateList = [
      "Andhra Pradesh",
      "Arunachal Pradesh",
      "Assam",
      "Bihar",
      "Chhattisgarh",
      "Goa",
      "Gujarat",
      "Haryana",
      "Himachal Pradesh",
      "Jammu and Kashmir",
      "Jharkhand",
      "Karnataka",
      "Kerala",
      "Madhya Pradesh",
      "Maharashtra",
      "Manipur",
      "Meghalaya",
      "Mizoram",
      "Nagaland",
      "Odisha",
      "Punjab",
      "Rajasthan",
      "Sikkim",
      "Tamil Nadu",
      "Telangana",
      "Tripura",
      "Uttarakhand",
      "Uttar Pradesh",
      "West Bengal",
      "Andaman and Nicobar Islands",
      "Chandigarh",
      "Dadra and Nagar Haveli",
      "Daman and Diu",
      "Delhi",
      "Lakshadweep",
      "Puducherry"
    ];
    return ValueListenableBuilder(
      valueListenable: selectedState,
      builder: (context, value, child) {
      return Autocomplete<String>(
      onSelected: (String selectedItem){
        selectedState.value=selectedItem;
      },
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text.isEmpty) {
          return Iterable<String>.empty();
        }
        else{
          return stateList.where((String item){
            final result=item.toLowerCase().startsWith(textEditingValue.text.toLowerCase());
            return result;
          });
        }
      },
    );
      },
    );
  }
}
