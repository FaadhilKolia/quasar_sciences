import 'package:flutter/material.dart';
import 'package:initial_route/pages/physics_page.dart';

class HomePage extends StatefulWidget {

  static String homePageId = '/';

  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/token4.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column( mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 250.00, horizontal: 60.00),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RawMaterialButton(
                    constraints: BoxConstraints.tightFor(width: 100.0, height: 100.0),
                    shape: CircleBorder(),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('images/token2.png')),
                      ),
                    ),
                    onPressed: () {
                      print('Button 1 was pressed');
                    },
                  ),
                  RawMaterialButton(
                    constraints: BoxConstraints.tightFor(width: 100.0, height: 100.00),
                    shape: CircleBorder(),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('images/token3.png')),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, PhysicsPage.physicsPageId);
                    },
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}