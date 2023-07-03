import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Route')),
      body: Center(
          child: ElevatedButton(
        onPressed: () {},
        child: Text('Go Back!'),
      )),
    );
  }
}
