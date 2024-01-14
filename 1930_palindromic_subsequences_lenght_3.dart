void main() {
  Solution().countPalindromicSubsequence('bbcbaba');
}

class Solution {
  int countPalindromicSubsequence(String s) {
    var mapChar = <String, int>{};
    int p = 0;
    int g = 0;
    int r = 0;

    for (int i = 0; i < s.length; i++) {
      mapChar[s[i]] = (mapChar[s[i]] ?? 0) + 1;
    }

    for (var entry in mapChar.entries) {
      int value = entry.value;
      if ((value - 2) == 0) {
        g += 1;
      } else if ((value - 2) > 0) {
        g += 1;
        p += value - 2;
      } else {
        p += 1;
      }
    }

    r = (p + (g % 2));

    print("G : $g");
    print("P : $p");
    print("R : $r");

    return r;
  }
}
