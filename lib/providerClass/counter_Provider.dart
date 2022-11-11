import 'package:first_flutter/providerClass/providerModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class counterProvider extends StatelessWidget {
  const counterProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final counterStateProvider = Provider.of<providerModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Counter App"),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  counterStateProvider.increment();
                },
                child: Text("+",style: TextStyle(fontSize: 25),),
              ),
              Text("Value is ${counterStateProvider.count} ",style: TextStyle(fontSize: 25),),
              TextButton(
                onPressed: () {
                  counterStateProvider.decrement();
                },
                child: Text("-",style: TextStyle(fontSize: 25),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
