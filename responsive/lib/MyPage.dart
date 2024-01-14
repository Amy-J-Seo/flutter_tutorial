import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text('MediaQuery'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('height ${MediaQuery.of(context).size.height}'),
            Text('OOrientation  ${MediaQuery.of(context).orientation}'),
            Text(
                'size ${MediaQuery.of(context).size.aspectRatio.toStringAsFixed(2)}'),
            Text('width ${MediaQuery.of(context).size.width}'),
          ],
        ),
      ),
    );
  }
}
