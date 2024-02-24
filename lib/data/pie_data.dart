import 'package:flutter/material.dart';

class PieData {
  static List<Data> data = [
    Data(name: "Blue", percent: 40, color: Colors.blue),
    Data(name: "Orange", percent: 30, color: Colors.orange),
    Data(name: "Black", percent: 20, color: Colors.black),
    Data(name: "red", percent: 10, color: Colors.red)
  ];
}

class Data {
  final String name;
  final double percent;
  final Color color;

  Data({required this.name, required this.color, required this.percent});
}
