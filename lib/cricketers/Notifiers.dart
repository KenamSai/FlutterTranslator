
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

ValueNotifier<XFile?> userGalleryImagePath = ValueNotifier(null);
ValueNotifier<String> userGender = ValueNotifier("Male");
ValueNotifier<int> counter = ValueNotifier(0);
ValueNotifier<DateTime> dob = ValueNotifier(DateTime.now());
ValueNotifier<String> usercountry = ValueNotifier("");
ValueNotifier<String> selectedState = ValueNotifier("");

