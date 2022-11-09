import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

ValueNotifier<XFile?> userImagePath = ValueNotifier(null);
ValueNotifier<String> userGender=ValueNotifier("Male");
ValueNotifier<String> userRole=ValueNotifier("");