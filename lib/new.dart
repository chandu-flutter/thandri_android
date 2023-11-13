import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:thandri_sannidhi/success.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({super.key});

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  //CollectionReference users = FirebaseFirestore.instance.collection("users");

  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final dobController = TextEditingController();
  final stateController = TextEditingController();
  final countryController = TextEditingController();
  bool loading = false;
  final fireStore = FirebaseFirestore.instance.collection("users");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Here"),
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
              Lottie.asset("animations/new.json", height: 100),
              Padding(
                padding: const EdgeInsets.only(
                    left: 28.0, right: 28, top: 5, bottom: 5),
                child: TextField(
                  controller: nameController,
                  decoration:
                      const InputDecoration(hintText: "Enter Your Name"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 28.0, right: 28, top: 5, bottom: 5),
                child: TextField(
                  controller: phoneController,
                  decoration: const InputDecoration(
                      hintText: "Enter Your Phone Number"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 28.0, right: 28, top: 5, bottom: 5),
                child: TextField(
                  controller: dobController,
                  decoration: const InputDecoration(
                      hintText: "Enter Your BirthDay & Month"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 28.0, right: 28, top: 5, bottom: 5),
                child: TextField(
                  controller: stateController,
                  decoration:
                      const InputDecoration(hintText: "Enter Your State"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 28.0, right: 28, top: 5, bottom: 5),
                child: TextField(
                  controller: countryController,
                  decoration:
                      const InputDecoration(hintText: "Enter Your Country"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 42.0, left: 26, right: 26),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      loading = true;
                    });

                    fireStore.doc(nameController.text).set({
                      'name': nameController.text.toString(),
                      'mobile': phoneController.text.toString(),
                      'dob': dobController.text.toString(),
                      'state': stateController.text.toString(),
                      'country': countryController.text.toString(),
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SuccessScreen();
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
