
import 'package:quiz_app/data.dart';

class QizBank{
  int _count=0;

List<Question>_questionBank=[
  Question(q:  'Sharks are mammals', r: false),
  Question(q:   'Sea otters have a favorite rock they use to break open food.', r: true),
  Question(q:  'The blue whale is the biggest animal to have ever lived.', r: true),
   Question(q:  'Sharks are mammals', r: false),
  Question(q:   'Sea otters have a favorite rock they use to break open food.', r: true),
  Question(q:  'The blue whale is the biggest animal to have ever lived.', r: true),
   Question(q:  'Sharks are mammals', r: false),
  Question(q:   'Sea otters have a favorite rock they use to break open food.', r: true),
  Question(q:  'The blue whale is the biggest animal to have ever lived.', r: true),
   Question(q:  'Sharks are mammals', r: false),
  Question(q:   'Sea otters have a favorite rock they use to break open food.', r: true),
  Question(q:  'The blue whale is the biggest animal to have ever lived.', r: true),

 
];


String getQuestion(){
  return _questionBank[_count].questionText;
}


bool getAnswer(){
  return _questionBank[_count].questionAnswer;
}


void getCount(){
if(_count<_questionBank.length-1 ){
  _count++;
}
}

bool isFinished(){
  if(_count==_questionBank.length-1){
    return true;
  }
  else {
    return false;
  }
}


void reset(){
  _count=0;
}

}