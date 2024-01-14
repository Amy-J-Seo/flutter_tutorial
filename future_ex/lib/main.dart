import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String result = 'No Data Found';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future test'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  futureTest();
                },
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Future test',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                result,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.redAccent,
                ),
              ),
              const Divider(
                height: 20,
                thickness: 2.0,
              ),
              FutureBuilder(
                  future: myFuture(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return Text(
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                          ),
                          // snapshot.data ??,
                          'test');
                    }
                    return const CircularProgressIndicator();
                  })
            ],
          ),
        ),
      ),
    );
  }

  Future<void> futureTest() async {
    await Future.delayed(const Duration(seconds: 3)).then((value) {
      print('2222');
      setState(() {
        result = 'The data is fetched.';
        print('4444 $result');
        print('33333');
      });
    });
    print('here comes first 1111');
    print('5555');
  }

  Future<String> myFuture() async {
    await Future.delayed(const Duration(seconds: 2));

    return 'another Future completed.';
  }
}
