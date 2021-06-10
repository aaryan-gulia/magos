import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:magos/screens/login_screen.dart';
import 'package:magos/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        HomeScreen.id: (context) => HomeScreen(),

        // RegistrationScreen.id: (context) => RegistrationScreen(),
        // WelcomeScreen.id: (context) => WelcomeScreen(),
        // ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
