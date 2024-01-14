void main() {
  print(Solution().lengthOfLongestSubstring('dvdf'));
}

class Solution {
  int lengthOfLongestSubstring(String s) {
    String subString = '';
    int lenght = 0;

    for (int i = 0; i < s.length; i++) {
      if (subString.contains(s[i])) {
        if (lenght < subString.length) {
          lenght = subString.length;
          subString = '${s[i]}';
          i = subString.indexOf(s[i]);
        }
      } else {
        subString += s[i];
      }
    }

    lenght = lenght < subString.length ? subString.length : lenght;

    return lenght;
  }
}
