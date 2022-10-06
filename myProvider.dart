import 'package:flutter/material.dart';
// this is the provider
class myProvider with ChangeNotifier{
   //this is our state
   int counter = 0;
   // this function increments the the counter variable 
   void increment(){
    counter++;
    // now notify all listener of any change made to the state
    notifyListeners();
   }
}