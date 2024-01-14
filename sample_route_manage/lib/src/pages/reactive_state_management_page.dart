import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/count_controller_reactive_getx.dart';

class ReactiveStateManagementPage extends StatelessWidget {
  const ReactiveStateManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    return Scaffold(
      appBar: AppBar(
        title: const Text('ReactiveStateManagementPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Reative Get X',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            // GetX(
            //   builder: (_) {
            //     return Text(
            //         '${Get.find<CountControllerWithReactive>().count.value !}',
            //         style: const TextStyle(
            //           fontSize: 50,
            //         ));
            //   },
            // ),
            Obx(() =>
            Text(
             '${ Get.find<CountControllerWithReactive>().count.value}',
               style: const TextStyle(
                 fontSize: 50,
               ),
             ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().increase();
              },
              child: const Text(
                '+',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<CountControllerWithReactive>().putNumber(5);
              },
              child: const Text(
                'change to 5',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
