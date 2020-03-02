import 'package:flutter/material.dart';
import 'package:initial_route/components/video_lists.dart';
import 'package:initial_route/components/constants.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

class DownloadCard extends StatelessWidget {

  DownloadCard({@required this.index});

  final int index;

  void downloadFile(String url) {

    print('Downloaded File');

  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.00, vertical: 10.00),
      child: RawMaterialButton(
          onPressed: () {
            print(index);
            downloadFile('1');
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
                  padding: const EdgeInsets.only(left: 8.00, top: 15.00, bottom: 15.00),
                  child: Icon(
                    Icons.file_download,
                    size: 46.00,
                    color: Colors.grey,

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
                                color: Colors.black87,
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