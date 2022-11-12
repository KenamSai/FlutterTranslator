import 'package:first_flutter/providerClass/counter_Provider.dart';
import 'package:first_flutter/providerClass/providerData.dart';
import 'package:first_flutter/routes/App_Routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class dataview extends StatelessWidget {
  const dataview({super.key});

  @override
  Widget build(BuildContext context) {
    final DataProvider = Provider.of<providerData>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Details of user"),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: ListView.builder(
            itemCount: providerData.data.length,
            itemBuilder: (context, index) {
              final dataValue = providerData.data[index];
              return Center(
                child: Card(
                  color: Colors.indigo,
                  child: Center(
                    child: Text(
                      "${dataValue.toString().toUpperCase()}",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 30.0,
        ),
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.prodataentry);
        },
      ),
    );
  }
}
