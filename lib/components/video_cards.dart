import 'package:flutter/material.dart';
import 'package:initial_route/components/video_lists.dart';
import 'constants.dart';
import 'package:flutter_youtube/flutter_youtube.dart';
import 'video_lists.dart';

class VideoCard extends StatelessWidget {

  VideoCard({@required this.index});

  final int index;

  void playVideo(String url) async{

    try {
      await FlutterYoutube.playYoutubeVideoByUrl(
          apiKey: kApiKey,
          videoUrl: url,
          autoPlay: true,
          fullScreen: true
      );
    } catch(e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.00, vertical: 10.00),
      child: RawMaterialButton(
          onPressed: () {
            print(index);
            playVideo(physicsTutorialList[index].getVideoUrl());
          },
          fillColor : Colors.white,
          elevation: 16.0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.00)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.00, top: 8.00, bottom: 8.00),
                  child: Icon(
                    Icons.play_circle_filled,
                    size: 60.00,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.00),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Container(
                          child: Text(physicsTutorialList[index].getTitle().toUpperCase(),
                            maxLines: null,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kBackgroundBlue,
                                fontSize: 15.00),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10.00,
              )
            ],
          )),
    );
  }
}