import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_foundations/result_page.dart';

class RandomizerPage extends StatefulWidget {
  const RandomizerPage({
    required this.min,
    required this.max,
    super.key,
  });

  final int min, max;
  @override
  State<RandomizerPage> createState() => _RandomizerPageState();
}

class _RandomizerPageState extends State<RandomizerPage> {
  int _generatedNumber = 10;
  final randomGenerator = Random();

  @override
  Widget build(BuildContext context) {
    widget.min;
    widget.max;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Randomizer'),
        ),
      ),
      body: Center(
        child: Text(
          'Generate a number'.toUpperCase(),
          style: TextStyle(
            fontSize: 42,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          'Generate',
        ),
        onPressed: () {
          setState(() {
            _generatedNumber = widget.min +
                randomGenerator.nextInt(widget.max + 1 - widget.min);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ResultPageWidget(
                randomNumber: _generatedNumber,
              ),
            ));
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
