import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Route')),
      body: Center(
          child: ElevatedButton(
        child: Text('Open Route'),
        onPressed: () {},
      )),
    );
  }
}
