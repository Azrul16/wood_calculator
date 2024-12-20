import 'package:flutter/material.dart';

class PlaneWoodPage extends StatelessWidget {
  const PlaneWoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plane Wood'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text(
          'This is the Plane Wood page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
