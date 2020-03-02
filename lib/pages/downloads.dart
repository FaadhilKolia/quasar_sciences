import 'package:initial_route/components/video_lists.dart';
import 'package:initial_route/components/download_cards.dart';

import '../components/video_cards.dart';
import 'package:flutter/material.dart';

class DownloadLists extends StatefulWidget {
  const DownloadLists({
    Key key,
  }) : super(key: key);

  @override
  _DownloadListsState createState() => _DownloadListsState();
}

class _DownloadListsState extends State<DownloadLists> {

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
            image: AssetImage('images/token8.png'),
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
                      child: Text('Resources', textAlign: TextAlign.right,style: TextStyle(
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
                      DownloadCard(index: 0,),
                      DownloadCard(index: 1,),
                      DownloadCard(index: 2,),
                      DownloadCard(index: 3,),
                      DownloadCard(index: 4,),
                      DownloadCard(index: 5,),
                      DownloadCard(index: 6,),
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

