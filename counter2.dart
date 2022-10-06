import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider_project/myProvider.dart';

class Counter2 extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        decoration: BoxDecoration(color: Colors.blue, borderRadius:BorderRadius.circular(20),),
        width: 150,
        height: 150,
        child: Center(
          child: Text(Provider.of<myProvider>(context).counter.toString(), style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}
