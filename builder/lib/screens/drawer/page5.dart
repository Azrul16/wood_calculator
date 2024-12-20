import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text(
          'This is Page 1',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
