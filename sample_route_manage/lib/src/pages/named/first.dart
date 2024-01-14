import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/pages/general/second.dart';
import 'package:sample_route_manage/src/pages/named/second.dart';

class FirstNamedPage extends StatelessWidget {
  const FirstNamedPage({super.key});

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
            Get.toNamed('/second');
          // Get.offNamed('/second'); => this case, remove the previous page and move to the next one. cannot use go back with the button
          }, child: const Text('Go to the SecondNamed page '))
        ],
      ),
    ),
    );
  }
}
