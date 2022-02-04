import 'package:flutter/material.dart';
import 'package:signin2/my_button/my_button.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Sign In',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: _buildButton(),
    );
  }

  Widget _buildButton() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyButton(
            image: Image.asset('images/glogo.png'),
            text: const Text('Login with google',
                style: TextStyle(color: Colors.black)),
            color: Colors.white,
            radius: 4.0,
            onPressed: () {},
          ),
          const SizedBox(
            height: 10.0,
          ),
          MyButton(
            image: Image.asset('images/flogo.png'),
            text: const Text('Login with facebook'),
            color: const Color(0xFF334D92),
            radius: 4.0,
            onPressed: () {},
          ),
          const SizedBox(
            height: 10.0,
          ),
          MyButton(
            image: const Icon(
              Icons.mail,
              color: Colors.white,
            ),
            text: const Text('Login with Email'),
            color: Colors.green,
            radius: 4.0,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
