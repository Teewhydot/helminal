List<Map<String, dynamic>> locateMatchingWordPairs(List<String> words) {
  List<Map<String, dynamic>> matchingWordPairs = [];

  for (int i = 0; i < words.length; i++) {
    String word1 = words[i];
    for (int j = i + 1; j < words.length; j++) {
      String word2 = words[j];

      int matchingLetters = 0;
      String matchedPositions = '';

      for (int k = 0; k < word1.length; k++) {
        if (word1[k] == word2[k]) {
          matchingLetters++;
          matchedPositions += k.toString();
        }
      }

      if (matchingLetters >= 1 && matchingLetters <= 5) {
        matchingWordPairs.add({
          'words': [word1, word2],
          'matchingLetters': matchingLetters,
        });
      }
    }
  }

  return matchingWordPairs;
}
