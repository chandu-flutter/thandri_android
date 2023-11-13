import 'package:flutter/material.dart';

class TestimonyReceivedScreen extends StatelessWidget {
  const TestimonyReceivedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thank you"),
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 54, 1, 63),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 32, right: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'To God be the Glory',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Thank you for sharing',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Continue with your walk with Jesus',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
