import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_route_manage/src/controller/count_controller_getx.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({super.key});

  Widget _button(){
    return ElevatedButton(
      onPressed: () {
        Get.find<CountControllerGetX>().increase();
      },
      child: Text(
        '+',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Get X',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          GetBuilder<CountControllerGetX>(builder: (controller){
            return Text(
              '${controller.count}',
              style: const TextStyle(
                fontSize: 50,
              ),
            );
          }),
          _button(),
        ],
      ),
    );
  }
}
