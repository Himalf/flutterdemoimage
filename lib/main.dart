// import 'package:assign1/button_widget.dart';
import 'package:assign1/card_widget.dart';
import 'package:assign1/input_widget.dart';
import 'package:assign1/register.dart';
// import 'package:assign1/row_column.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Register(),
    );
  }
}
