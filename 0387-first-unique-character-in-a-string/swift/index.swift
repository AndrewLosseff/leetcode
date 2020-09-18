func firstUniqChar(_ s: String) -> Int {
    var letterCounter: [Character : Int] = [:]

    for char in s {
        letterCounter[char, default: 0] += 1
    } 
    
    for (index, char) in s.enumerated() {
        if letterCounter[char] == 1 {
            return index
        }
    }


    return -1
}

print(firstUniqChar("leetcode")) // 0
print(firstUniqChar("loveleetcode")) // 2

