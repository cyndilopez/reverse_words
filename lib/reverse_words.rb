# A method to reverse each word in a sentence, in place.
# Time complexity: O(n) or linear because it will iterate through each of the characters at most 2n times
# Space complexity: O(1) because this is not dependent on the length of the sentence, n
def find_whitespace_index(characters)
  n = characters.length
  n.times do |i|
    if characters[i] == " "
      return i
    end
  end
  return n
end

def reverse_words(my_words)
  return nil if my_words.nil?
  n = my_words.length
  i = 0
  while i <= n
    index_whitespace = find_whitespace_index(my_words[i..n]) + i #i is changing below
    j = index_whitespace - 1
    while i < j
      temp = my_words[j]
      temp2 = my_words[i]
      my_words[i] = temp
      my_words[j] = temp2
      j -= 1
      i += 1
    end
    i = index_whitespace + 1
  end
  return my_words
end

p reverse_words("   evol ")
