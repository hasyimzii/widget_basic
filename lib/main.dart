import 'package:flutter/material.dart';
import 'views/chit_chat.dart';
import 'views/biodata_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      initialRoute: '/chit_chat',
      routes: {
        '/chit_chat' : (context) => ChitChat(),
        '/biodata_form' : (context) => BiodataForm(),
      },
    );
  }
}
