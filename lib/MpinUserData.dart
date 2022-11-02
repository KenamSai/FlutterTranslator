import 'package:dio/dio.dart';
import 'package:first_flutter/CONSTANTS/apiConstants.dart';
import 'package:first_flutter/MpinList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MpinUserData extends StatefulWidget {
  const MpinUserData({super.key});

  @override
  State<MpinUserData> createState() => _MpinUserDataState();
}

class _MpinUserDataState extends State<MpinUserData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("MPIN User data"),
        ),
      ),
      body: Container(
        color: Colors.amberAccent,
        // child: ListView.builder(
        //     itemCount: 0,
        //     itemBuilder: ((context, index) {
        //       return MpinList();
        //     })),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchtheData();
  }

  fetchtheData()  async {
      final requestUrl =
          apiConstants.baseUrl + apiConstants.endPoint + apiConstants.parametrs;

      final _dioObject = Dio();
      try {
        final _response = await _dioObject
            .get(requestUrl);
        print("response $_response");
      }on DioError catch (e) {
        print("error");
      }
    }
  }

