import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:sample_route_manage/src/controller/count_controller_getx.dart';
import 'package:sample_route_manage/src/controller/count_controller_provider.dart';
import 'package:sample_route_manage/src/pages/state/with_getx.dart';
import 'package:sample_route_manage/src/pages/state/with_provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  const SimpleStateManagePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerGetX());
    return Scaffold(
      appBar: AppBar(title: const Text('Simple state management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(child: WithGetX()),
            Expanded(child: ChangeNotifierProvider<CountControllerProvider>(create: (_)=> CountControllerProvider(),
            child: const WithProvider(),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
