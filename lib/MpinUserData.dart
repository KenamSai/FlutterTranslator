import 'package:dio/dio.dart';
import 'package:first_flutter/CONSTANTS/apiConstants.dart';
import 'package:first_flutter/MpinModelClass.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MpinUserData extends StatefulWidget {
  const MpinUserData({super.key});

  @override
  State<MpinUserData> createState() => _MpinUserDataState();
}

class _MpinUserDataState extends State<MpinUserData> {
  MpinModelClass? Mpindata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("MPIN User data"),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
           
            children: [
              Column(
                children: [
                Text("status:${Mpindata?.status}",textAlign: TextAlign.start,),
                Text("Name:${Mpindata?.eMPNAME}"),
                Text("Designation:${Mpindata?.dESIGNATION}"),
                Text("MOBILE NO:${Mpindata?.mOBILENO}"),
                Text("message:${Mpindata?.message}"),
                Text("mpin:${Mpindata?.mpin}"),
                Text("OTP:${Mpindata?.otp}"),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchtheData();
  }

  fetchtheData() async {
    final requestUrl = apiConstants.baseUrl + apiConstants.endPoint;

    final _dioObject = Dio();
    Map<String, dynamic> params = {"MOBILE_NO": 9100923132};
    try {
      final _response =
          await _dioObject.get(requestUrl, queryParameters: params);
      final data = MpinModelClass.fromJson(_response.data);
      setState(() {
        this.Mpindata = data;
      });
    //  print("response  : $_response");
    } on DioError catch (e) {
      print("error");
    }
  }
}
