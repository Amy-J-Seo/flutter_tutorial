import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/pages/general/first.dart';
import 'package:sample_route_manage/src/pages/simple_state_management_page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Route manage home'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              child: const Text('General router -> move to the First page'),
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const FirstPage(),));
                Get.to(const FirstPage());
              },
            ),
            ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const FirstPage(),));
                  // Navigator.of(context).pushNamed("/first");
                Get.toNamed('/first');
                },
                child:
                    const Text('Named router -> move to the FirstNamed page'),
            ),
            ElevatedButton(
              child:
              const Text('Passing Arguments'),
              onPressed: () {
                Get.toNamed('/next', arguments: User(
                  name:'test',
                  age:22,
                ));

                // Get.to(const FirstPage(), arguments:"hello");
              },
            ),
            ElevatedButton(
              child:
              const Text('Passing parameter'),
              onPressed: () {
                Get.toNamed('/user/234565?name=test&age=22');
                // Get.to(const FirstPage(), arguments:"hello");
              },
            ),
            ElevatedButton(
              child:
              const Text('Simple state management'),
              onPressed: () {
                Get.to(const SimpleStateManagePage());
                // Get.to(const FirstPage(), arguments:"hello");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class User{
  String name;
  int age;
  User({required this.name, required this.age});
}