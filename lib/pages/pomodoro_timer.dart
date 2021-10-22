
import 'dart:async';
import 'package:flutter/material.dart';


class PomodoroTimer extends StatefulWidget {
  const PomodoroTimer({Key? key}) : super(key: key);

  @override
  _PomodoroTimerPageState createState() => _PomodoroTimerPageState();
}

class _PomodoroTimerPageState extends State<PomodoroTimer> {
  int _seconds = 0 ;
  int _minutes = 25;
  Timer? _timer;

  void stopTimer(){
    _timer!.cancel();
    _seconds = 0;
    _minutes = 25;
  }

  void _startTimer(){
    if(_timer != null){
      _timer!.cancel();
    }
    if (_minutes > 0){
      _seconds = _minutes *60;
    }
    if(_seconds > 60){
      _minutes = (120/60).floor();
      _seconds -= (_minutes * 60);
    }
    _timer = Timer.periodic(Duration(seconds:1), (timer) {
      setState(() {
        if(_seconds > 0){
          _seconds--;
        }
        else {
          if(_minutes > 0){
            _seconds = 59;
            _minutes--;
          }
          else{
            _timer!.cancel();
            print("timer Complete");
          }
        }
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pomodoro Timer'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "25:00",
                 style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                 ),
              ),
            ],
          ),
          SizedBox(
            height:300,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: (){
                  // _stopTimer;
                },
                color: Colors.black,
                shape: CircleBorder(
                  side: BorderSide(color: Colors.orange)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text(
                      "stop",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24
                          )
                  ),
                ),
              ),
              RaisedButton(
                onPressed: (){
                  _startTimer;
                },
                color: Colors.orange[300],
                shape: CircleBorder(
                    side: BorderSide(color: Colors.orange)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Text(
                      "Start",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24
                      )
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
