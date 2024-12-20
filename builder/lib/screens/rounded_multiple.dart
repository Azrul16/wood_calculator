import 'package:flutter/material.dart';

class RoundedMultiplePage extends StatelessWidget {
  const RoundedMultiplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rounded Wood (Multiple)'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text(
          'This is the Rounded Wood (Multiple) page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
