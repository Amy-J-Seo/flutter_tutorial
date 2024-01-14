import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenA'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/B');
              },
              child: Text('Go to screenB'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/C');
              },
              child: Text('Go to screenC'),
            ),
          ],
        ),
      ),
    );
  }
}
