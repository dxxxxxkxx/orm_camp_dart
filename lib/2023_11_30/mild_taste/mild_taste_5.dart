void main() {
  const List<int> cards = [1, 2, 3, 4, 5];
  List<int> collCards = [1, 3, 2, 5];
  int? missCard;

  for (int i = 0; i < cards.length; i++) {
    if (!collCards.contains(cards[i])) {
      missCard = cards[i];
      break;
    }
  }

  print(missCard ?? 'No missing card');
}
