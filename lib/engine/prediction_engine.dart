int countMatchingLetters(String str1, String str2) {
  // Check if the lengths of the strings are equal
  int matches = 0;

  if (str1.length != str2.length) {
  } else {
    // Initialize a variable to store the number of matching letters

    // Iterate through each character in both strings simultaneously
    for (int i = 0; i < str1.length; i++) {
      // Check if the characters at the same position in both strings match
      if (str1[i] == str2[i]) {
        // If they match, increment the count of matching letters
        matches++;
      }
    }
    print(matches);
    // Return the number of matching letters
  }
  return matches;
}
