import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State createState() => ProfilePageState();
}

class ProfilePageState extends State<Profile>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(fit: StackFit.expand, children: [
          Container(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[Text("Profile Information")]))
        ]));
  }
}
