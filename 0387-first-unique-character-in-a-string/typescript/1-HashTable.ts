export function firstUniqChar(s: string): number {
    interface HashTableInterace {
        [key: string]: number;
    }
    
    const hashTable: HashTableInterace = {}

    for(let i = 0; i <s.length; i++) {
        const char = s[i]
        if (hashTable[char]) hashTable[char]++
        else hashTable[char] = 1 
    }

    for (let i = 0; i < s.length; i++)  {
        const char = s[i]
        if (hashTable[char] === 1) {
            return i
        }
    }

    console.log(hashTable)

    return -1
};

console.log(firstUniqChar("leetcode")) // 0
console.log(firstUniqChar("loveleetcode")) // 2