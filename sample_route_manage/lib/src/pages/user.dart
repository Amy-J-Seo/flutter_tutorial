import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Next page'),
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${Get.parameters['uid']}"),
          Text("${Get.parameters['name']} hell0"),
          Text("${Get.parameters['age']}"),
          ElevatedButton(onPressed: (){
            // Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const SecondPage(),));
            Get.back();
          }, child: const Text('Go back')),

        ],
      ),
    ),
    );
  }
}
