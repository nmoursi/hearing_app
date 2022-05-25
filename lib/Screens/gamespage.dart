import 'package:flutter/material.dart';
import 'package:hearing_app/Games/game_1.dart';
import 'package:hearing_app/Screens/profile.dart';
import 'package:hearing_app/Services/auth.dart';
import 'package:provider/provider.dart';

class GamesPage extends StatefulWidget {
  @override
  State createState() => GamesPageState();
}

class GamesPageState extends State<GamesPage>
    with SingleTickerProviderStateMixin {
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
        bottomNavigationBar: BottomNavigationBar(currentIndex: 0, items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.games),
            label: 'Games',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          )
        ]),
        backgroundColor: Colors.white,
        body: Stack(fit: StackFit.expand, children: [
          Container(
              padding: EdgeInsets.all(10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(padding: EdgeInsets.all(0)),
                    SizedBox(
                        height: 100,
                        child: RaisedButton.icon(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          color: Colors.white,
                          label: Text(
                            "Instruments Game",
                            textScaleFactor: 2,
                          ),
                          icon: Icon(Icons.multitrack_audio_sharp, size: 40),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Game1()));
                          },
                        ))
                  ]))
        ]));
  }
}

// context.read<AuthenticationService>().signOut()
