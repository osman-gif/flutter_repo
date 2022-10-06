import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import 'counterPro.dart';
import 'dashboard.dart';
import 'myProvider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //wrap the root widget inside change_notifier widget 
      home: ChangeNotifierProvider<myProvider>(
        //now create object of the provider(tell it what is the provider) using the create function
        create: (_)=> myProvider(),
        // give the notifier_widget a child which is the root widget 
        child: CounterPro(),
      ),
    );
  }
}


