import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:hearing_app/Games/game_1_next.dart';

class Game1 extends StatefulWidget {
  @override
  _Game1State createState() => _Game1State();
}

class _Game1State extends State<Game1> {
  final player = AudioCache();

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
              Text(
                  "Press on the instruments to familiarize yourself with their sounds",
                  style: TextStyle(fontSize: 16.0, color: Colors.black)),
              Padding(
                padding: EdgeInsets.all(20.0),
              ),
              Expanded(
                  child: GridView.count(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Image.asset("assets/guitar/sq301814032.jpg"),
                        Text("Guitar")
                      ],
                    ),
                    onPressed: () {
                      player.play("guitar/56111__guitarmaster__c-note.wav");
                    },
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Image.asset(
                            "assets/piano/pngtree-play-piano-hand-drawn-piano-black-piano-piano-illustration-png-image_449910.jpg"),
                        Text("Piano")
                      ],
                    ),
                    onPressed: () {
                      player.play("piano/95328__ramas26__c.wav");
                    },
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Image.asset("assets/xylo/xylo.jpg"),
                        Text("Xylophone")
                      ],
                    ),
                    onPressed: () {
                      player.play("xylo/xylo.wav");
                    },
                  ),
                ],
              )),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Next()));
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ))
            ],
          ),
        ));
  }
}
