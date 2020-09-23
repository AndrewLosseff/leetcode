import 'dart:collection';

int firstUniqChar(String str) {
  HashMap hashTable = new HashMap<String, int>();

  for (int i = 0; i < str.length; i++) {
    if (hashTable[str[i]] != null) {
      hashTable[str[i]] = hashTable[str[i]] + 1;
    } else {
      hashTable[str[i]] = 1;
    }
  }

  for (int i = 0; i < str.length; i++) {
    if (hashTable[str[i]] == 1) {
      return i;
    }
  }

  return -1;
}

main() {
  print(firstUniqChar("leetcode"));
  print(firstUniqChar("loveleetcode"));
  print(firstUniqChar(""));
}
