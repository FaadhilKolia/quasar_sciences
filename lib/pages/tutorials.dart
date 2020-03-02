import 'package:initial_route/components/video_lists.dart';

import '../components/video_cards.dart';
import 'package:flutter/material.dart';

class VideoLists extends StatefulWidget {
  const VideoLists({
    Key key,
  }) : super(key: key);

  @override
  _VideoListsState createState() => _VideoListsState();
}

class _VideoListsState extends State<VideoLists> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/token6.png'),
              fit: BoxFit.fill,
        ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: SizedBox(
                width: double.infinity,
                child: Column( mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('Physics', textAlign: TextAlign.right,style: TextStyle(
                        fontSize: 50.00, fontWeight: FontWeight.w700
                      ),),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(30.00), topRight: Radius.circular(30.00)),
                  color: Color(0xFFCCCCCC),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.00, bottom: 10.00),
                  child: ListView(
                    children:
                    <Widget>[
                      VideoCard(index: 0,),
                      VideoCard(index: 1,),
                      VideoCard(index: 2,),
                      VideoCard(index: 3,),
                      VideoCard(index: 4,),
                      VideoCard(index: 5,),
                      VideoCard(index: 6,),
                      VideoCard(index: 7,),
                      VideoCard(index: 8,),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


