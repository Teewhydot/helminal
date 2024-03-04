Map<String, List<String>> groupWordsByLastLetter(List<String> words) {
  Map<int, List<String>> groupedWords = {};

  for (String word in words) {
    String lastLetter = word.substring(word.length - 1);
    int matchCount = 0;
    for (String otherWord in words) {
      if (word == otherWord) continue;
      if (otherWord.endsWith(lastLetter)) {
        matchCount++;
      }
    }
    groupedWords.putIfAbsent(matchCount, () => []);
    groupedWords[matchCount]?.add(word);
  }

  Map<String, List<String>> result = {};
  groupedWords.forEach((key, value) {
    result['Words with $key last letter match${key > 1 ? 'es' : ''}'] = value;
  });
print(result);
  return result;
}

//group words by last two letters

Map<String, List<String>> groupWordsByLastTwoLetters(List<String> words) {
  Map<int, List<String>> groupedWords = {};

  for (String word in words) {
    String lastTwoLetters = word.substring(word.length - 2);
    int matchCount = 0;
    for (String otherWord in words) {
      if (word == otherWord) continue;
      if (otherWord.endsWith(lastTwoLetters)) {
        matchCount++;
      }
    }
    groupedWords.putIfAbsent(matchCount, () => []);
    groupedWords[matchCount]?.add(word);
  }

  Map<String, List<String>> result = {};
  groupedWords.forEach((key, value) {
    result['Words with $key last two letters match${key > 1 ? 'es' : ''}'] = value;
  });
  print(result);

  return result;
}

//group words by last three letters

Map<String, List<String>> groupWordsByLastThreeLetters(List<String> words) {
  Map<int, List<String>> groupedWords = {};

  for (String word in words) {
    String lastThreeLetters = word.substring(word.length - 3);
    int matchCount = 0;
    for (String otherWord in words) {
      if (word == otherWord) continue;
      if (otherWord.endsWith(lastThreeLetters)) {
        matchCount++;
      }
    }
    groupedWords.putIfAbsent(matchCount, () => []);
    groupedWords[matchCount]?.add(word);
  }

  Map<String, List<String>> result = {};
  groupedWords.forEach((key, value) {
    result['Words with $key last three letters match${key > 1 ? 'es' : ''}'] = value;
  });
  print(result);

  return result;
}

//group words by last four letters

Map<String, List<String>> groupWordsByLastFourLetters(List<String> words) {
  Map<int, List<String>> groupedWords = {};

  for (String word in words) {
    String lastFourLetters = word.substring(word.length - 4);
    int matchCount = 0;
    for (String otherWord in words) {
      if (word == otherWord) continue;
      if (otherWord.endsWith(lastFourLetters)) {
        matchCount++;
      }
    }
    groupedWords.putIfAbsent(matchCount, () => []);
    groupedWords[matchCount]?.add(word);
  }

  Map<String, List<String>> result = {};
  groupedWords.forEach((key, value) {
    result['Words with $key last four letters match${key > 1 ? 'es' : ''}'] = value;
  });
  print(result);

  return result;
}

//group words by last five letters

Map<String, List<String>> groupWordsByLastFiveLetters(List<String> words) {
  Map<int, List<String>> groupedWords = {};

  for (String word in words) {
    String lastFiveLetters = word.substring(word.length - 5);
    int matchCount = 0;
    for (String otherWord in words) {
      if (word == otherWord) continue;
      if (otherWord.endsWith(lastFiveLetters)) {
        matchCount++;
      }
    }
    groupedWords.putIfAbsent(matchCount, () => []);
    groupedWords[matchCount]?.add(word);
  }

  Map<String, List<String>> result = {};
  groupedWords.forEach((key, value) {
    result['Words with $key last five letters match${key > 1 ? 'es' : ''}'] = value;
  });
  print(result);

  return result;
}

//group words by first letter

Map<String, List<String>> groupWordsByFirstLetter(List<String> words) {
  Map<int, List<String>> groupedWords = {};

  for (String word in words) {
    String firstLetter = word.substring(0, 1);
    int matchCount = 0;
    for (String otherWord in words) {
      if (word == otherWord) continue;
      if (otherWord.startsWith(firstLetter)) {
        matchCount++;
      }
    }
    groupedWords.putIfAbsent(matchCount, () => []);
    groupedWords[matchCount]?.add(word);
  }

  Map<String, List<String>> result = {};
  groupedWords.forEach((key, value) {
    result['Words with $key first letter match${key > 1 ? 'es' : ''}'] = value;
  });
  print(result);

  return result;
}

//group words by first two letters

Map<String, List<String>> groupWordsByFirstTwoLetters(List<String> words) {
  Map<int, List<String>> groupedWords = {};

  for (String word in words) {
    String firstTwoLetters = word.substring(0, 2);
    int matchCount = 0;
    for (String otherWord in words) {
      if (word == otherWord) continue;
      if (otherWord.startsWith(firstTwoLetters)) {
        matchCount++;
      }
    }
    groupedWords.putIfAbsent(matchCount, () => []);
    groupedWords[matchCount]?.add(word);
  }

  Map<String, List<String>> result = {};
  groupedWords.forEach((key, value) {
    result['Words with $key first two letters match${key > 1 ? 'es' : ''}'] = value;
  });
  print(result);

  return result;
}

//group words by first three letters

Map<String, List<String>> groupWordsByFirstThreeLetters(List<String> words) {
  Map<int, List<String>> groupedWords = {};

  for (String word in words) {
    String firstThreeLetters = word.substring(0, 3);
    int matchCount = 0;
    for (String otherWord in words) {
      if (word == otherWord) continue;
      if (otherWord.startsWith(firstThreeLetters)) {
        matchCount++;
      }
    }
    groupedWords.putIfAbsent(matchCount, () => []);
    groupedWords[matchCount]?.add(word);
  }

  Map<String, List<String>> result = {};
  groupedWords.forEach((key, value) {
    result['Words with $key first three letters match${key > 1 ? 'es' : ''}'] = value;
  });
  print(result);

  return result;
}

//group words by first four letters

Map<String, List<String>> groupWordsByFirstFourLetters(List<String> words) {
  Map<int, List<String>> groupedWords = {};

  for (String word in words) {
    String firstFourLetters = word.substring(0, 4);
    int matchCount = 0;
    for (String otherWord in words) {
      if (word == otherWord) continue;
      if (otherWord.startsWith(firstFourLetters)) {
        matchCount++;
      }
    }
    groupedWords.putIfAbsent(matchCount, () => []);
    groupedWords[matchCount]?.add(word);
  }

  Map<String, List<String>> result = {};
  groupedWords.forEach((key, value) {
    result['Words with $key first four letters match${key > 1 ? 'es' : ''}'] = value;
  });
  print(result);

  return result;
}

//group words by first five letters

Map<String, List<String>> groupWordsByFirstFiveLetters(List<String> words) {
  Map<int, List<String>> groupedWords = {};

  for (String word in words) {
    String firstFiveLetters = word.substring(0, 5);
    int matchCount = 0;
    for (String otherWord in words) {
      if (word == otherWord) continue;
      if (otherWord.startsWith(firstFiveLetters)) {
        matchCount++;
      }
    }
    groupedWords.putIfAbsent(matchCount, () => []);
    groupedWords[matchCount]?.add(word);
  }

  Map<String, List<String>> result = {};
  groupedWords.forEach((key, value) {
    result['Words with $key first five letters match${key > 1 ? 'es' : ''}'] = value;
  });
  print(result);

  return result;
}