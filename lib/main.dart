// Moh. Iqbal Waldan (2031710139)
import 'package:flutter/material.dart';

import 'widgets/convert.dart';
import 'widgets/input.dart';
import 'widgets/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController etInput = TextEditingController();
  // variable berubah
  double _inputUser = 0;
  double _kelvin = 0;
  double _fahrenheit = 0;
  double _reamur = 0;

  konvertHandler() {
    setState(() {
      _inputUser = double.parse(etInput.text);
      _kelvin = _inputUser + 273;
      _reamur = 4 / 5 * _inputUser;
      _fahrenheit = _inputUser * 9 / 5 + 32;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Konverter Suhu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Konverter Suhu Moh. Iqbal Waldan (2031710139)"),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Input(etInput: etInput),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Result(
                    result: _kelvin,
                    title: "Kelvin",
                  ),
                  Result(
                    result: _reamur,
                    title: "Reamur",
                  ),
                  Result(
                    result: _fahrenheit,
                    title: "Fahrenheit",
                  ),
                ],
              ),
              Convert(konvertHandler: konvertHandler),
            ],
          ),
        ),
      ),
    );
  }
}
