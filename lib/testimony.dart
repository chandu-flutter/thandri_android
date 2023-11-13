import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:thandri_sannidhi/success.dart';
import 'package:thandri_sannidhi/testimonyReceived.dart';

class TestimonyScreen extends StatefulWidget {
  const TestimonyScreen({super.key});

  @override
  State<TestimonyScreen> createState() => _TestimonyScreenState();
}

class _TestimonyScreenState extends State<TestimonyScreen> {
  //CollectionReference users = FirebaseFirestore.instance.collection("users");

  final nameController = TextEditingController();
  final testimonyController = TextEditingController();
  final fireStore = FirebaseFirestore.instance.collection("testimony");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Testimony"),
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Lottie.asset("animations/new.json", height: 100),
              Padding(
                padding: const EdgeInsets.only(
                    left: 28.0, right: 28, top: 35, bottom: 5),
                child: TextField(
                  controller: nameController,
                  decoration:
                      const InputDecoration(hintText: "Enter Your Name"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 28.0, right: 28, top: 5, bottom: 5),
                child: TextFormField(
                  maxLines: 20,
                  controller: testimonyController,
                  decoration: const InputDecoration(
                    hintText: "Your Testimony",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 42.0, left: 26, right: 26),
                child: InkWell(
                  onTap: () {
                    fireStore.doc(nameController.text).set({
                      'name': nameController.text.toString(),
                      'Testimony': testimonyController.text.toString(),
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const TestimonyReceivedScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    child: Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 54, 1, 63),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
