import 'dart:math';

void main() {
  var deck = new Deck();
}

class Deck {
  List<Card> cards = [];

  Deck() {
    var ranks = [
      'Ace',
      'Two',
      'Three',
      'Four',
      'Five',
      'Six',
      'Seven',
      'Eight',
      'Nine',
      'Ten',
      'Jack',
      'Queen',
      'King'
    ];
    var suits = ['\u{2660}', '\u{2665}', '\u{2666}', '\u{2663}'];

    for (var suit in suits) {
      for (var rank in ranks) {
        var card = new Card(suit, rank);
        cards.add(card);
      }
    }
    List guest = [];
    List com1 = [];
    List com2 = [];
    for (var i = 0; i < 3; i++) {
      var num1 = randomNum(cards.length);
      guest.add(cards[num1]);
      cards.remove(cards[num1]);
      var num2 = randomNum(cards.length);
      com1.add(cards[num2]);
      cards.remove(cards[num1]);
      var num3 = randomNum(cards.length);
      com2.add(cards[num3]);
      cards.remove(cards[num1]);
    }
    print(' ');
    print('Guest : ${guest}');
    print('Com-1 : ${com1}');
    print('Com-2 : ${com2}');
    print(' ');
  }
}

class Card {
  String rank;
  String suit;

  Card(this.rank, this.suit);

  toString() {
    return '$rank $suit';
  }
}

int randomNum(int num) {
  return new Random().nextInt(num);
}
