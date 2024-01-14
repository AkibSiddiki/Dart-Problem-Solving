void main() {
  print(Solution().lengthOfLongestSubstring('jbpnbwwd'));
}

class Solution {
  int lengthOfLongestSubstring(String s) {
    String subString = '';
    int lenght = 0;
    int last_split_index = 0;
    for (int i = 0; i < s.length; i++) {
      if (subString.contains(s[i])) {
        if (lenght <= subString.length) {
          lenght = subString.length;
          last_split_index = subString.indexOf(s[i]) + last_split_index;
          i = last_split_index;
          subString = '';
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
