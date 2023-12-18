class Word {
  final String word;
  final List<String> vowels;

  const Word({required this.word}) : vowels = const ['a', 'e', 'i', 'o', 'u'];

  bool? isVowel({required final int i}) {
    return i < word.length ? vowels.contains(word[i].toLowerCase()) : null;
  }

  bool? isConsonant({required final int i}) {
    final bool? result = isVowel(i: i);

    return result != null ? (!result) : null;
  }
}
