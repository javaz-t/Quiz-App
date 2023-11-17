import 'package:flutter/material.dart';
import 'package:quiz_app/abstration.dart';
import 'package:quiz_app/data.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  runApp(MainApp());
}

QizBank quizBank = QizBank();

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
            child: Padding(padding: EdgeInsets.all(20), child: QuizApp())),
      ),
    );
  }
}

class QuizApp extends StatefulWidget {
  QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Widget> TrueOrFalse = [
    SizedBox(
      height: 20,
      width: 30,
    )
  ];



  void checkAnswer(bool userAnswer) {
    setState(() {
 if(quizBank.isFinished()==true){
    Alert(context:context,
    title: 'Finished',desc: 'you are completed sucessfully').show();
   TrueOrFalse = [
    SizedBox(
      height: 20,
      width: 30,
    )
  ];
    }
    else{
      bool result = quizBank.getAnswer();
      quizBank.getCount();

      if (userAnswer == result) {
        TrueOrFalse.add(Icon(
          Icons.done,
          color: Colors.green,
        ));
      } else {
        TrueOrFalse.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
    }
      
      
    });
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Center(
            child: Text(
              quizBank.getQuestion(),
              textScaleFactor: 3,
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: TextButton(
              child: const Text(
                'TRUE',
                textScaleFactor: 2,
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              onPressed: () {
                checkAnswer(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: TextButton(
              child: const Text(
                'FALSE',
                textScaleFactor: 2,
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        Row(children: TrueOrFalse)
      ],
    );
  }
}
