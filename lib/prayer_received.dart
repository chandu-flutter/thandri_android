import 'package:flutter/material.dart';

class PrayerReceivedScreen extends StatelessWidget {
  const PrayerReceivedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thank you for Sharing"),
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        centerTitle: true,
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
                'Your sorrow shall be turned into Joy',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'John 16:20',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'We will keep praying for you',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
