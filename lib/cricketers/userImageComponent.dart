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
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              alignment: Alignment(0, 1),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () async {
                      final _imageGallery = await ImagePicker()
                          .pickImage(source: ImageSource.camera);
                      userGalleryImagePath.value = _imageGallery;
                    },
                    child: Icon(Icons.camera_enhance_outlined),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: GestureDetector(
                      onTap: () async {
                        final _image = await ImagePicker()
                            .pickImage(source: ImageSource.gallery);
                        userGalleryImagePath.value = _image;
                      },
                      child: Icon(Icons.image),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: GestureDetector(
                      onTap: (() {
                        Navigator.pop(context);
                      }),
                      child: Text("Cancel"),
                    ),
                  ),
                ],
              ),
            );
          },
        );

        // final _image =
        //     await ImagePicker().pickImage(source: ImageSource.gallery);
        // userImagePath.value = _image;
      }),
      child: ValueListenableBuilder(
        valueListenable: userGalleryImagePath,
        builder: (context, value, child) {
          return value == null
              ? Padding(
                  padding: const EdgeInsets.only(left: 130),
                  child: Image.network(
                    "https://files.worldwildlife.org/wwfcmsprod/images/Lion_WWFGIFTS_cover_2020/magazine_small/2wafu1bmcz_b21fc8e6.jpeg",
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.height * 0.2,
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
