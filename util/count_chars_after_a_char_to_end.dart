void main() {
  String originalString = "samplestring";
  String substring = "l";

  String count = countCharsAfterCharToEnd(originalString, substring);

  print(count);
}

String countCharsAfterCharToEnd(String str, String cha) {
  int substringIndex = str.indexOf(cha);

  if (substringIndex == -1) {
    return '';
  }

  String remainingSubstring = str.substring(substringIndex + 1);
  return remainingSubstring;
}
