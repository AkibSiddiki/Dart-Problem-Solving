void main() {
  print(Solution().countPalindromicSubsequence('bbcbabaa'));
}

class Solution {
  int countPalindromicSubsequence(String s) {
    List<String> subsequenceList = [];
    List<String> charList = [];

    for (int i = 0; i < s.length; i++) {
      for (int j = i + 1; j < s.length; j++) {
        if ((i + 1) == j || s[j] != s[i]) {
          charList.add(s[j]);
        } else {
          if ((j + 1) == s.length) {
            for (String char in charList) {
              print(s[i] + char + s[j]);
              if (!subsequenceList.contains(s[i] + char + s[j])) {
                subsequenceList.add(s[i] + char + s[j]);
              }
            }
            charList.clear();
          } else if (s[i] != s[j + 1]) {
            for (String char in charList) {
              if (!subsequenceList.contains(s[i] + char + s[j])) {
                subsequenceList.add(s[i] + char + s[j]);
              }
            }
            charList.clear();
          } else {
            charList.add(s[j]);
          }
        }
      }
      charList.clear();
    }

    print(subsequenceList);
    return subsequenceList.length;
  }
}
