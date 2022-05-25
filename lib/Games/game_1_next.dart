import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class Next extends StatefulWidget {
  @override
  _NextState createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          title: Image.asset(
            "assets/logo_white_background-2.jpg",
            fit: BoxFit.scaleDown,
            height: 60.0,
          ),
        ),
        backgroundColor: Colors.white,
        body: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(icon: Icon(Icons.music_note), onPressed: () {}),
                Text("What instrument is playing?"),
                TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Instrument name',
                    ))
              ],
            )));
  }
}
