// Moh. Iqbal Waldan (2031710139)
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required double result,
    required this.title,
  })  : _result = result,
        super(key: key);

  final double _result;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Suhu dalam " + title),
        const Text(""),
        Text('$_result', style: const TextStyle(fontSize: 20)),
      ],
    );
  }
}
