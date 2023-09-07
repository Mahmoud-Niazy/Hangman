import 'dart:io';
import 'dart:math';
import 'package:hungman_game/stages.dart';
import 'package:hungman_game/types.dart';

void main() {
  print(''' 
For animals enter 1 
For Colors enter 2
For Subjects enter 3
''');
  int response = int.parse(stdin.readLineSync()!);
  List chosenList =types[response-1];
  String randomWord = chosenList[Random().nextInt(chosenList.length - 1)];
  print(randomWord);
  List display = [];
  for (var letter in randomWord.split('')) {
    display.add('_');
  }
  print(display);

  var gussedLetter;
  bool gameOver = false ;
  int lives = 6;

  while(!gameOver){
    print('enter your gussed letter');
    gussedLetter = stdin.readLineSync()!.toUpperCase();
    for(int i = 0 ; i< randomWord.length;i++){
      if(randomWord[i]==gussedLetter){
        display[i]=gussedLetter;
      }
    }
    print(display);
    if(!randomWord.split('').contains(gussedLetter)){
      lives -=1;
      print(stages[6-lives-1]);
      if(lives ==0){
        print('You Lose');
        gameOver = true ;
      }
    }
    if(!display.contains('_')){
      print('You Win');
      gameOver = true;
    }
  }

}
