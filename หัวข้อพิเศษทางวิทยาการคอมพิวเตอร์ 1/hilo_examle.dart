import 'dart:io';
import 'dart:math';

int count = 0;

void main() {
  int amount;
  String selector;

  do {
    print(' ');
    print('========== Enter Your Bet amount ==========');
    amount = int.parse(stdin.readLineSync());
  } while (amount < 1);

  do {
    print(' ');
    print('========== Enter betting options ===========');
    print('|   H/hight  |   L/low   |   HL/high&low   |');
    selector = stdin.readLineSync().toUpperCase();
  } while (selector != 'H' && selector != 'L' && selector != 'HL');

  print(' ');
  print('========== The dice have a number ==========');
  randomNum();
  print(' ');
  print('Total \u{1F3B2} : ${count}');
  print(' ');
  if (count > 11 && selector == 'H') {
    print('You Win!! \u{1F3C6}\u{1F3C6}');
  } else if (count > 11 && selector != 'H') {
    print('You Lose!! \u{1F62D}\u{1F62D}');
  } else if (count < 11 && selector == 'L') {
    print('You Win!! \u{1F3C6}\u{1F3C6}');
  } else if (count < 11 && selector != 'L') {
    print('You Lose!! \u{1F62D}\u{1F62D}');
  } else if (count == 11 && selector == 'HL') {
    print('You Win!! \u{1F3C6}\u{1F3C6}');
  } else if (count == 11 && selector != 'HL') {
    print('You Lose!! \u{1F62D}\u{1F62D}');
  }
  print(' ');
}

void randomNum() {
  List lid = [];
  for (int i = 0; i < 3; i++) {
    Random dice = new Random();
    int rdDice = dice.nextInt(6) + 1;
    lid.add(rdDice);
    count += rdDice;
  }
  print(
      '|    \u{1F3B2} : ${lid[0]}   |    \u{1F3B2} : ${lid[1]}    |   \u{1F3B2} : ${lid[2]}    |');
  print(' ');
}
