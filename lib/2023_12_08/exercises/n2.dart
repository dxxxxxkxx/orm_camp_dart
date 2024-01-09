class Word {
  final String word;
  final List<String> vowels;

  const Word({required this.word}) : vowels = const ['a', 'e', 'i', 'o', 'u'];

  bool isVowel({required final int i}) =>
      vowels.contains(word[i].toLowerCase());

  bool isConsonant({required final int i}) => !isVowel(i: i);
}
