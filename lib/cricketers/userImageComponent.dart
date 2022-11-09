import 'dart:io';

import 'package:first_flutter/cricketers/Notifiers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class userImageComponent extends StatelessWidget {
  const userImageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() async {
        final _image =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        userImagePath.value = _image;
      }),
      child: ValueListenableBuilder(
        valueListenable: userImagePath,
        builder: (context, value, child) {
          return value == null
              ? Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image.network(
                    "https://files.worldwildlife.org/wwfcmsprod/images/Lion_WWFGIFTS_cover_2020/magazine_small/2wafu1bmcz_b21fc8e6.jpeg",
                    width: 300,
                    height: 100,
                  ),
              )
              : Padding(
                padding: const EdgeInsets.only(left: 110),
                child: Image.file(
                    File(value.path),
                     width: 200,
                     height: 150,
                  ),
              );
        },
      ),
    );
  }
}
