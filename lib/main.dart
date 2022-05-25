import 'package:flutter/material.dart';
import 'package:hearing_app/Games/game_1.dart';
import 'package:hearing_app/Screens/gamespage.dart';
import 'package:hearing_app/Screens/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hearing_app/Services/auth.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

// void main() => runApp(MyApp());

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          Provider<AuthenticationService>(
            create: (_) => AuthenticationService(FirebaseAuth.instance),
          ),
          StreamProvider(
              create: (context) =>
                  context.read<AuthenticationService>().authStateChanges)
        ],
        child: MaterialApp(
          home: Wrapper(),
          theme: ThemeData(primarySwatch: Colors.red),
        ));
  }
}

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      return GamesPage();
    } else {
      return LoginPage();
    }

    // return either main or gamespage
  }
}
