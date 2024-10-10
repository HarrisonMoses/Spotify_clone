import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Stack(
        children: [
          Center(
            child: Text('Get Started', style: TextStyle(fontSize: 30),),
          ),
        ],
      ),
    );
  }
}