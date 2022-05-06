import 'package:flutter/material.dart';
import 'package:chat_app/signup.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat app'),
      ),
      body: loginForm(),
    );
  }
}

class loginForm extends StatelessWidget {
  const loginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: 300,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.account_box_rounded,
                    color: Colors.red,
                    size: 200,
                  ),
                  const Text('Login In'),
                  Row(
                    children: [
                      const Text('Need a account?'),
                      TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 2)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Sign_Up()));
                          },
                          child: const Text(
                            'Create one here!',
                            textAlign: TextAlign.start,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  TextButton(onPressed: () {}, child: const Text('Login'))
                ])));
  }
}
