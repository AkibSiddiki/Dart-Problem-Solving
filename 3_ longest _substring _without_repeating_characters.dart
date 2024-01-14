void main() {
  print(Solution().lengthOfLongestSubstring('abcdabccabcdxcd'));
}

class Solution {
  int lengthOfLongestSubstring(String s) {
    String string = s;
    String subString = '';
    int lenght = 0;
    for (int i = 0; i < string.length; i++) {
      if (subString.contains(string[i])) {
        if (lenght <= subString.length) {
          lenght = subString.length;
        }
        subString = strTrim(subString, string[i]);
        subString = subString + '${string[i]}';
      } else {
        subString += string[i];
      }
    }

    lenght = lenght < subString.length ? subString.length : lenght;
    return lenght;
  }

  String strTrim(String str, String cha) {
    int substringIndex = str.indexOf(cha);

    if (substringIndex == -1) {
      return '';
    }

    String remainingSubstring = str.substring(substringIndex + 1);
    return remainingSubstring;
  }
}
