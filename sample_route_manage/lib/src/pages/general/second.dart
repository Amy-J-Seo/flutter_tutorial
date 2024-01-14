import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SecondPage General page'),
      ),
      body: Center(
      child: Column(
        children: [
          ElevatedButton(onPressed: (){
            // Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const SecondPage(),));
            Get.back();
          }, child: const Text('Go back')),
          ElevatedButton(onPressed: (){
            // Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const SecondPage(),));
            // Get.to(const Home()); -> 뒤로가기 버튼이 생김
            Get.offAll(const Home());
          }, child: const Text('Go home'))
        ],
      ),
    ),
    );
  }
}
