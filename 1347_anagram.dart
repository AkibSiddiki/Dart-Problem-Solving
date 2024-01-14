void main() {
  var op = Solution();

  op.minSteps('leetcode', 'practice');
}

class Solution {
  int minSteps(String s, String t) {
    if (s.length != t.length) {
      return 0;
    }

    String S = s;
    String T = t;

    var sCharMap = <String, int>{};
    var tCharMap = <String, int>{};

    int number_of_replaceable_index = 0;

    for (int i = 0; i < t.length; i++) {
      sCharMap[S[i]] = (sCharMap[S[i]] ?? 0) + 1;
      tCharMap[T[i]] = (tCharMap[T[i]] ?? 0) + 1;
    }

    for (int i = 0; i < t.length; i++) {
      if (T[i] != " ") {
        if (sCharMap[T[i]] == null) {
          number_of_replaceable_index += tCharMap[T[i]]!;
          T = T.replaceAll(T[i], " ");
        } else {
          if (sCharMap[T[i]]! < tCharMap[T[i]]!) {
            number_of_replaceable_index += tCharMap[T[i]]! - sCharMap[T[i]]!;
            T = T.replaceAll(T[i], " ");
          }
        }
      }
    }

    print(number_of_replaceable_index);

    return number_of_replaceable_index;
  }

  void sortMapPrint(Map<String, int> myMap) {
    List<MapEntry<String, int>> entries = myMap.entries.toList();
    entries.sort((a, b) => a.key.compareTo(b.key));
    Map<String, int> sortedMap = Map.fromEntries(entries);

    print(sortedMap);
  }
}


// saloon
// cooler
// s = 1, a =1 ,
