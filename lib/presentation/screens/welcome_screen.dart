import 'package:flutter/material.dart';

import 'avatar_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(milliseconds: 1500),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AvatarPage(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: newMethod(),
      child: const Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              CircularProgressIndicator(),
              Text('Loading',
                  style: TextStyle(color: Colors.white70, fontSize: 28))
            ],
          ))),
    );
  }

  BoxDecoration newMethod() => decorationScreenInitial();

  BoxDecoration decorationScreenInitial() {
    return const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/screeninitial.JPG'),
            fit: BoxFit.cover));
  }
}
