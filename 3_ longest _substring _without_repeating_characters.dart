void main() {
  print(Solution().lengthOfLongestSubstring('jbpnbwwd'));
}

class Solution {
  int lengthOfLongestSubstring(String s) {
    String subString = '';
    int lenght = 0;

    for (int i = 0; i < s.length; i++) {
      // print(i);
      if (subString.contains(s[i])) {
        if (lenght < subString.length) {
          lenght = subString.length;
          // print(subString.indexOf(s[i]));
          i = subString.indexOf(s[i]);
          subString = '';
          // print(i);
        }
      } else {
        subString += s[i];
      }
      print(subString);
    }

    lenght = lenght < subString.length ? subString.length : lenght;

    return lenght;
  }
}
