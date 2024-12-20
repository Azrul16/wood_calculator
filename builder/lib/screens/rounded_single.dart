import 'package:flutter/material.dart';

class RoundedSinglePage extends StatelessWidget {
  const RoundedSinglePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rounded Wood (Single)'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Text(
          'This is the Rounded Wood (Single) page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
