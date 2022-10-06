import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dashboard.dart';
import 'myProvider.dart';

class CounterPro extends StatelessWidget {

  //the counter to be incremented
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Demo")),
      body: Center(
        child: DashBoard(),
      ),
      // when pressing the floating action button the counter is incresed by one
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Provider.of<myProvider>(context,listen: false).increment();
            },
      ),
    );
  }
}