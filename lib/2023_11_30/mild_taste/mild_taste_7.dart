void main() {
  List<int> typhoonDates = [5, 8, 19, 25, 31];

  for (int i = 1; i < typhoonDates.length; i++) {
    print(typhoonDates[i] - typhoonDates[i - 1]);
  }
}
