import 'package:flutter/material.dart';
import 'package:initial_route/components/constants.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'dart:async';

bool timerOn;
double valueOnTimer;
Timer _timer;

class TimerPage extends StatefulWidget {
  @override
  _TimerPageState createState() => _TimerPageState();
}

class _TimerPageState extends State<TimerPage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timerOn = false;
    valueOnTimer = 1500;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timerOn? _timer.cancel(): null;
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/token4.png'), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: TimerSlider(
                timerOn: timerOn,
                onChanged: timerOn
                    ? null
                    : (value) {
                        valueOnTimer = value;
                        print('ValueOnTimer: ' + valueOnTimer.toString());
                      },
                initialValue: valueOnTimer,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.00,
              ),
              child: RawMaterialButton(
                  constraints:
                  BoxConstraints(maxHeight: 55.00, maxWidth: 195.0),
                  onPressed: () {

                      timerOn? timerOn = false: timerOn = true;
                      print(timerOn);

                      if(mounted) {
                        _timer = Timer.periodic(Duration(seconds: 1), (timer) {
                          setState(() {

                          print(valueOnTimer);

                            if (!timerOn || valueOnTimer < 1 || !mounted) {

                              timer.cancel();

                              timerOn = false;

                              if (valueOnTimer < 15) {
                                valueOnTimer = 15;
                              }

                            }

                            if (valueOnTimer >= 1 && timerOn) {
                              valueOnTimer--;

                            }


                          });

                        });

                      }


                  },
                  fillColor: Colors.white,
                  elevation: 25.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.00)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 8.00, top: 8.00, bottom: 8.00),
                          child: Icon(timerOn? Icons.pause_circle_filled: Icons.play_circle_filled,
                            size: 40.00,
                            color: kBackgroundBlue,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(8.00),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Container(
                                  child: Center(
                                    child: Text(timerOn? 'Stop Timer'.toUpperCase(): 'Start Timer'.toUpperCase(),
                                      maxLines: null,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          color: Colors.blueGrey,
                                          fontSize: 15.00),
                                    ),
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
            ),
          ],
        ),
      ),
    );
  }
}

class TimerSlider extends StatefulWidget {
  TimerSlider({this.timerOn, this.onChanged, this.initialValue});

  bool timerOn;
  Function onChanged;
  double initialValue;

  @override
  _TimerSliderState createState() => _TimerSliderState();
}

class _TimerSliderState extends State<TimerSlider> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: SleekCircularSlider(
          appearance: CircularSliderAppearance(
            size: MediaQuery.of(context).size.width * 0.65,
            customWidths: CustomSliderWidths(
              progressBarWidth: 20.00,
            ),
            customColors: CustomSliderColors(
              progressBarColors: [Colors.blueGrey, Colors.grey, Colors.white],
              trackColor: kLightGrey,
              shadowColor: Colors.black12,
              dotColor: kBackgroundBlue,
            ),
            infoProperties: InfoProperties(
                mainLabelStyle: TextStyle(
                  color: kLightGrey,
                  fontSize: 45.0,
                  fontWeight: FontWeight.w900,
                ),
                topLabelText: widget.timerOn
                    ? 'Time Remaining'.toUpperCase()
                    : 'Set Timer'.toUpperCase(),
                topLabelStyle: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.00,
                    color: Colors.blueGrey),
                bottomLabelStyle: TextStyle(
                    fontSize: 15.00,
                    fontWeight: FontWeight.w800,
                    color: Colors.blueGrey),
                modifier: (value) {

                  print('value: '+ value.toString());

                  int secondsElapsed = valueOnTimer.round();

                  print('secondsElapsed: ' + secondsElapsed.toString());

                  int secondsLeft;
                  if(secondsElapsed >= 60) {
                    secondsLeft = secondsElapsed.remainder(60);

                  } else {
                    secondsLeft = secondsElapsed;
                  }

                  print('secondsLeft= ' + secondsLeft.toString());

                  String secondsLeftString;

                  if (secondsLeft < 10) {
                    secondsLeftString = '0' + secondsLeft.toString();
                  } else {
                    secondsLeftString = secondsLeft.toString();
                  }

                  num minutesLeft = (secondsElapsed - secondsLeft)/ 60;

                  String minutesLeftString;

                  if (minutesLeft < 10) {
                    minutesLeftString = '0' + minutesLeft.round().toString();
                  } else {
                    minutesLeftString = minutesLeft.round().toString();
                  }

                  return minutesLeftString + ':' + secondsLeftString;
                }),
          ),
          max: 7200,
          min: timerOn? 0.0: 15.0,
          onChange: widget.onChanged,
          initialValue: widget.initialValue,
        ),
      ),
    );
  }
}
