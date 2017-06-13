module FunWithStrings
  def palindrome?
    self.downcase!
    self.gsub!(/\W/, "")  #performs substitution to ignore nonword characters, ignores punctuation
    self == self.reverse ? true : false  #is it palindrome?
  end
  def count_words
    self.downcase!
    words = self.split  #string becomes array of words
    count = {}
    words.map!{ |word| word.gsub(/\W/,"") }  #creates new array to ignore punctuation
    words.reject!{|word| word == ""}   #filters out empty elements
    words.each {|word| count.key?(word) ? (count[word] +=1) : (count[word] = 1) }
    return count
  end
  def anagram_groups
    word = self.split  #separatres the string into a an array of words
    anagrams = []
    word.each do |x|  #  check if sorted words equal other words that are sorted, ignores case
      nestArray = word.select { |second_word| x.downcase.chars.sort == second_word.downcase.chars.sort }
      word = word - nestArray  
      anagrams.push(nestArray)
    end
    return anagrams
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
