import 'package:flutter/material.dart';
import 'package:thandri_sannidhi/song.dart';

class ShowDetails extends StatefulWidget {
  final int index;

  const ShowDetails({super.key, required this.index});

  @override
  State<ShowDetails> createState() => _ShowDetailsState();
}

class _ShowDetailsState extends State<ShowDetails> {
  double _scale = 1.0;
  double _previousScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 54, 1, 63),
        title: Text(songs[widget.index].name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              GestureDetector(
                onScaleStart: (details) {
                  _previousScale = _scale;
                },
                onScaleUpdate: (details) {
                  setState(() {
                    _scale = _previousScale * details.scale;
                  });
                },
                onDoubleTap: () {
                  setState(() {
                    _scale = _scale == 1.0 ? 2.0 : 1.0;
                  });
                },
                child: Transform.scale(
                  scale: _scale,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Text(
                      songs[widget.index].details,
                      style: const TextStyle(fontSize: 18),
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
