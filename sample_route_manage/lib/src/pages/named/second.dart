import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home.dart';

class SecondNamedPage extends StatelessWidget {
  const SecondNamedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SecondNamed page'),
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
            Get.offAllNamed('/');
          }, child: const Text('Go home'))
        ],
      ),
    ),
    );
  }
}
