import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'DetailScreen.dart';

class HomeScreen extends StatelessWidget {
  void navigateToDetail(BuildContext context, Color color, String label) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailScreen(color: color, label: label),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () => navigateToDetail(context, Colors.yellow, '1'),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 1,left: 10),
                  child: Container(
                    color: Colors.yellow,
                    height: 100,
                    width: 150,
                    child: Center(child: Text('1', style: TextStyle(fontSize: 24))),
                  ),
                ),
              ),
              Spacer(),

              GestureDetector(
                onTap: () => navigateToDetail(context, Colors.red, '2'),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 1,right: 10),
                  child: Container(
                    color: Colors.red,
                    height: 100,
                    width: 150,
                    child: Center(child: Text('2', style: TextStyle(fontSize: 24))),
                  ),
                ),
              ),

            ],
          ),
          GestureDetector(
            onTap: () => navigateToDetail(context, Colors.orange, '3'),
            child: Container(
              color: Colors.orange,
              height: 100,
              width: 150,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Center(child: Text('3', style: TextStyle(fontSize: 24))),
            ),
          ),
          GestureDetector(
            onTap: () => navigateToDetail(context, Colors.blue, '4'),
            child: Container(
              color: Colors.blue,
              height: 100,
              child: Center(child: Text('4', style: TextStyle(fontSize: 24))),
            ),
          ),
        ],
      ),
    );
  }
}