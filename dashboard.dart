import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'counter1.dart';
import 'counter2.dart';

class DashBoard extends StatelessWidget {
  DashBoard();

  @override
  Widget build(BuildContext context) {
    return Card(
      
      
      elevation: 10,
      // ignore: sized_box_for_whitespace
      child: Container(
        decoration: BoxDecoration(color: Colors.redAccent, borderRadius:BorderRadius.circular(20),),
        width: 400,
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Dashboard",
              style: TextStyle(fontSize: 60),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Counter1(),
                const SizedBox(height: 20),
                Counter2(),
              ],
            )
          ],
        ),
      ),
      );
  }
}
