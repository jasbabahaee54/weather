import 'package:flutter/material.dart';
import 'home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF3B4E6F),
        scaffoldBackgroundColor: Color(0xFF3B4E6F),
      ),
      home: HomePage(),
    );
  }
}
