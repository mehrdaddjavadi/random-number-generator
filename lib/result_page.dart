import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class ResultPageWidget extends StatelessWidget {
  ResultPageWidget({super.key, required this.randomNumber});
  late final int randomNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Result Page'),
        ),
      ),
      body: Center(
        child: Text(
          'your generated number is $randomNumber '.toUpperCase(),
          style: TextStyle(
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}
