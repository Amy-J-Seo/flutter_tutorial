import 'package:flutter/material.dart';
import 'package:signin/my_button/my_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'SignIn',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: buildButton(),
    );
  }

  Widget buildButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.grey, // background
              backgroundColor: Colors.white, // foreground
            ),
            onPressed: () {
              print('google');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset('images/glogo.png'),
                const Text(
                  'Login with Google',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.blue, // background
              backgroundColor: Colors.indigo[900], // foreground
            ),
            onPressed: () {
              print('google');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset('images/flogo.png'),
                const Text(
                  'Login with Facebook',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.green, // background
              backgroundColor: Colors.green[800], // foreground
            ),
            onPressed: () {
              print('email');
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Login with Email',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          MyButton(
            image: Image.asset('images/glogo.png'),
            text: const Text('hello'),
            color: Colors.pink[300]!,
            radius: 5,
            onPressed: () {
              print('ddd??');
            },
          ),
        ],
      ),
    );
  }
}
