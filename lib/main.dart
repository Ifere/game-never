import 'package:flutter/material.dart';
//import 'package:audioplayers/audio_cache.dart';
//import 'package:rflutter_alert/rflutter_alert.dart';
import 'never_questions.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
//        appBar: AppBar(
//          title: Center(
//            child: Text('Never H',
//              style: TextStyle(color: Colors.black),),
//
//          ),
//          backgroundColor: Colors.orangeAccent,
//        ),
        body: SafeArea(
          child: QuizPage(),
        ),
      ),
    );
  }
}

//AudioCache audio = AudioCache();
//void Bell(bool b) async {
//  if (b) {
//    await audio.play('correct.wav');
//  }
//  else {
//    await audio.play('wrong.wav');
//  }
//}
//
//Alert Done (int num, BuildContext context) {
//  return Alert(
//    context: context,
//    type: AlertType.success,
//    title: 'DONE',
//    desc: '$num',
//    buttons: [
//      DialogButton(
//        child: Text(
//          'Restart',
//          style: TextStyle(color: Colors.white,),
//        ),
//        onPressed: () {
//          Navigator.pop(context);
//        },
//        color: Colors.indigo,
//      )
//    ],
//  );
//}
int cur =0;
Feeder que = Feeder();


class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  @override
  Widget build(BuildContext context) {
    int page = cur +1;
    int l = que.length();
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: Text(
              '$page/$l',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white
              ),


            ),
          ),
          Expanded(

            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Center(
                child: Text(
                  que.getQuestion(cur),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.indigo,
            width: double.infinity,
            height: 80.0,
            child: Row(

              children: <Widget>[
                Expanded(

                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                    child: RaisedButton(
                      color: Colors.white,
                      splashColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'I have',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
//                          Bell(que.getAnswer() == true);
                          if (cur + 1 == que.length()) {
//                            audio.play('/finished.wav');
//                            Done(context).show();
                            cur = 0;
                          }
                          else{
                            cur ++;
                          }
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
                    child: RaisedButton(
                      splashColor: Colors.red,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        'No never',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () async {
                        setState(() {
//                          Bell(que.getAnswer() == false);
                          if (cur + 1 == que.length()) {
//                            audio.play('/finished.wav');
//                            Done(context).show();
                            cur = 0;
                          }
                          else {
                            cur ++;
                          }
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ]);
  }
}

