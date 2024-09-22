import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pigeon_bug/pigeon_bug.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _pigeonBugPlugin = PigeonBug();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: ElevatedButton(
            child: const Text('Test'),
            onPressed: () => _testInt(),
          ),
        ),
      ),
    );
  }

  Future<void> _testInt() async {
    await _pigeonBugPlugin.testIntFunction(69);
  }
}
