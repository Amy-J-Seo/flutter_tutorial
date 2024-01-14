import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_route_manage/src/controller/count_controller_provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Provider',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Consumer<CountControllerProvider>(builder: (_, snapshot, child) {
            return Text("${snapshot.count}",
                style: const TextStyle(fontSize: 50));
          }),
          ElevatedButton(
              onPressed: () {
                Provider.of<CountControllerProvider>(context, listen: false)
                    .increse();
              },
              child: const Text(
                '+',
                style: TextStyle(
                  fontSize: 30,
                ),
              )),
        ],
      ),
    );
  }
}
