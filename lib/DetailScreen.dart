import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Color color;
  final String label;

  DetailScreen({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Container(
          color: color,
          height: 200,
          width: 200,
          child: Center(
            child: Text(
              label,
              style: TextStyle(fontSize: 48),
            ),
          ),
        ),
      ),
    );
  }
}