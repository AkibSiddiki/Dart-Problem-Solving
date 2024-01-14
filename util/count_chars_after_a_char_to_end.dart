void main() {
  String originalString = "samplestring";
  String substring = "l";

  int count = countCharsAfterCharToEnd(originalString, substring);

  print("Number of characters from '$substring' to the end: $count");
}

int countCharsAfterCharToEnd(String str, String cha) {
  int substringIndex = str.indexOf(cha);

  if (substringIndex == -1) {
    return 0;
  }

  String remainingSubstring = str.substring(substringIndex + 1);
  return remainingSubstring.length;
}
