import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height * .9,
          width: MediaQuery.sizeOf(context).width * .9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset("assets/animation/kis2.json"),
              const Text(
                "I   L O V E   Y O U",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
