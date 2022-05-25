import 'package:flutter/material.dart';
import 'package:hearing_app/main.dart';
import 'package:provider/provider.dart';
import 'package:hearing_app/Screens/login.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Create an account",
                    style: TextStyle(fontSize: 30.0, color: Colors.black)),
                Form(
                    child: Container(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                                decoration: InputDecoration(labelText: "Email"),
                                keyboardType: TextInputType.emailAddress),
                            TextFormField(
                                decoration:
                                    InputDecoration(labelText: "Password"),
                                keyboardType: TextInputType.text,
                                obscureText: true),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                            ),
                            MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)),
                                color: Colors.red,
                                textColor: Colors.white,
                                child: Text("Sign Up"),
                                onPressed: () {}),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                },
                                child: Text("Back"))
                          ],
                        ))),
              ],
            )
          ],
        ));
  }
}
