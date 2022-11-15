import 'dart:io';

import 'package:first_flutter/cricketers/Notifiers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
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
            return Container(
              child: AlertDialog(
                alignment: Alignment(0, 1),
                title: Column(
                  children: [
                      Row(
                        children: [
                          Text("Profile photo"),
                           Padding(
                          padding: const EdgeInsets.only(left: 100.0),
                          child: GestureDetector(
                            onTap: (() {
                              Navigator.pop(context);
                            }),
                            child: Icon(
                              Icons.cancel_presentation,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        ],
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: GestureDetector(
                              onTap: () async {
                                final _imageGallery = await ImagePicker()
                                    .pickImage(source: ImageSource.camera);
                                userImagePath.value = _imageGallery;
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.camera_enhance_outlined,color: Colors.green,),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: GestureDetector(
                              onTap: () async {
                                final _image = await ImagePicker()
                                    .pickImage(source: ImageSource.gallery);
                                userImagePath.value = _image;
                                Navigator.pop(context);
                              },
                              child: Icon(Icons.image,color: Colors.green,),
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.only(left: 25.0),
                          //   child: GestureDetector(
                          //     onTap: (() {
                          //       Navigator.pop(context);
                          //     }),
                          //     child: Icon(
                          //       Icons.delete,
                          //       color: Colors.grey,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        );

        // final _image =
        //     await ImagePicker().pickImage(source: ImageSource.gallery);
        // userImagePath.value = _image;
      }),
      child: ValueListenableBuilder(
        valueListenable: userImagePath,
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

