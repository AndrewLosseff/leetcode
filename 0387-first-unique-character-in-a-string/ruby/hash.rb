def first_uniq_char(s)
    hash_table = {}
    new_arr = s.split("")

    new_arr.each do |char|
        if(hash_table.has_key?(char)) 
            hash_table[char] = hash_table[char] + 1
        else
            hash_table[char] = 1
        end
    end

    new_arr.each_with_index do |char, index|
        if (hash_table[char] == 1)
            return index
        end
    end

    return -1

end

print(first_uniq_char("leetcode"))
print(first_uniq_char("loveleetcode"))