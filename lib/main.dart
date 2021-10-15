import 'package:flutter/material.dart';
import 'package:prototype_add_donation/addDonation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "Welcome to gift me again again. Here is my again again change.",
      home: AddDonation(),
    );
  }
}