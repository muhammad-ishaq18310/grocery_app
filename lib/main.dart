import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_prctice/home.dart';
import 'package:state_prctice/provider/count_provider.dart';

import 'package:state_prctice/stateful_wiget.dart';
import 'package:state_prctice/why_provider.dart';

import 'screen/counter_example.dart';

// this is my first project
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CountProvider(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const CounterExample(),
        ));
  }
}
