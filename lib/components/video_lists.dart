import 'package:flutter/material.dart';

class VideoInformation{

  VideoInformation({@required this.title, @required this.videoUrl});

  String title;
  String videoUrl;

  String getTitle() {

    return title;

  }

  String getVideoUrl() {

   return videoUrl;

  }

}

List physicsTutorialList = [

  VideoInformation(title: 'Introduction to the Course', videoUrl: 'https://www.youtube.com/watch?v=ctWDAdQ81B8'),
  VideoInformation(title: 'Scalars & Vectors', videoUrl: 'https://www.youtube.com/watch?v=sr2fBCzXo4g&list=PLBsP89CPrMeNm71T5gYC6jebm9vPbLBiP'),
  VideoInformation(title: 'Forces', videoUrl: 'https://www.youtube.com/watch?v=cG8PXdTlDag&list=PLBsP89CPrMeNm71T5gYC6jebm9vPbLBiP&index=3'),
  VideoInformation(title: 'Graphical Representation of Forces', videoUrl: 'https://www.youtube.com/watch?v=DHiKz_lCYMU&list=PLBsP89CPrMeNm71T5gYC6jebm9vPbLBiP&index=4'),
  VideoInformation(title: 'Forces & Newton\'s Second Law of Motion', videoUrl: 'https://www.youtube.com/watch?v=mfbSqTB74xM&list=PLBsP89CPrMeNm71T5gYC6jebm9vPbLBiP&index=5'),
  VideoInformation(title: 'Newton\'s Second Law of Motion Examples', videoUrl: 'https://www.youtube.com/watch?v=zsEcLVHnxUM&list=PLBsP89CPrMeNm71T5gYC6jebm9vPbLBiP&index=6'),
  VideoInformation(title: 'Newton\'s Second Law of Motion Examples Continued', videoUrl: 'https://www.youtube.com/watch?v=5TuyvWoaAZk&list=PLBsP89CPrMeNm71T5gYC6jebm9vPbLBiP&index=7'),
  VideoInformation(title: 'Momentum & Impulse', videoUrl: 'https://www.youtube.com/watch?v=5TuyvWoaAZk&list=PLBsP89CPrMeNm71T5gYC6jebm9vPbLBiP&index=8'),
  VideoInformation(title: 'Principle of Conservation of Linear Momentum', videoUrl: 'https://www.youtube.com/watch?v=5TuyvWoaAZk&list=PLBsP89CPrMeNm71T5gYC6jebm9vPbLBiP&index=9'),

];