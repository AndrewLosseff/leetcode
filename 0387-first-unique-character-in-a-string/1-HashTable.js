// Hash Maps aka Hash Tables

function firstUniqChar(str) {

    const letterCounter = {}

    for(let i = 0; i < str.length; i++) {
        const char = str[i]
        if(letterCounter[char]) letterCounter[char]++
        else letterCounter[char] = 1
    }

    for(let i = 0; i < str.length; i++) {
        const char = str[i]
        if(letterCounter[char] === 1) {
            return i
        }
    }
    
    return -1
}

console.log(firstUniqChar("leetcode")) // 0
console.log(firstUniqChar("loveleetcode")) // 2