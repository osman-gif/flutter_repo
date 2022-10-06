import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/myProvider.dart';

class Counter1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 27, 178, 40),
          borderRadius: BorderRadius.circular(20),
        ),
        width: 150,
        height: 150,
        child: Center(
          child: Text(
            Provider.of<myProvider>(context).counter.toString(),
            style: const TextStyle(fontSize: 40, color: Color.fromARGB(255, 6, 99, 9)),
          ),
        ),
      ),
    );
  }
}
