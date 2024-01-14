

import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
print('test');
        }, child: Text("Get my location",
        style:TextStyle(
          color:Colors.white,
        ),
        ),
          style:ElevatedButton.styleFrom(foregroundColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}
