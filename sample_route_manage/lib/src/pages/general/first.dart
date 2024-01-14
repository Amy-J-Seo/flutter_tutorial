import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/pages/general/second.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First General page'),
      ),
      body: Center(
      child: Column(
        children: [
          ElevatedButton(onPressed: (){
            // Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const FirstPage(),));
            Get.to(const SecondPage());
          }, child: const Text('Go to the Second page '))
        ],
      ),
    ),
    );
  }
}
