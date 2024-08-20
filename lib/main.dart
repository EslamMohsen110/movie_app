import 'package:flutter/material.dart';
import 'package:movie_app/home_basic.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeBasic.routeName,
      routes: {
        HomeBasic.routeName: (context) => HomeBasic(),
      },
    );
  }
}
