import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text("Go To Home")),
      ),
    );
  }
}
