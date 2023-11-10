import 'package:flutter/material.dart';
import 'package:thandri_sannidhi/song.dart';

class ShowDetails extends StatelessWidget {
  final int index;

  const ShowDetails({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        title: Text(songs[index].name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                songs[index].details,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
