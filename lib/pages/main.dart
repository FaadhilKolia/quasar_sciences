import 'package:flutter/material.dart';
import 'home_page.dart';
import 'physics_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      routes: {
        HomePage.homePageId: (context) => HomePage(),
        PhysicsPage.physicsPageId: (context) => PhysicsPage(),
      },
      initialRoute: HomePage.homePageId,
    );
  }
}


