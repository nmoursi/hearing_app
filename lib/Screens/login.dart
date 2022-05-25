import 'package:flutter/material.dart';
import 'package:hearing_app/Screens/signup.dart';
import 'package:hearing_app/Services/auth.dart';
import 'package:provider/provider.dart';
import 'package:hearing_app/Services/auth.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   State createState() => LoginPageState();
// }

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage("assets/logo_white_background-2.jpg"),
                ),
                // here
                Form(
                    child: Container(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(labelText: "Email"),
                                keyboardType: TextInputType.emailAddress),
                            TextFormField(
                                controller: passwordController,
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
                                child: Text("Login"),
                                onPressed: () {
                                  context.read<AuthenticationService>().signIn(
                                      email: emailController.text,
                                      password: passwordController.text);
                                }),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SignUpPage()));
                                },
                                child: Text("Don't have an account? Sign Up"))
                          ],
                        )))
              ],
            )
          ],
        ));
  }
}
// Navigator.push(
//                                        context,
//                                      MaterialPageRoute(
//                                        builder: (context) =>
//                                          GamesPage()),
