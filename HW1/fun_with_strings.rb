#Danny Yu, dyu6@binghamton.edu

module FunWithStrings
  def palindrome?
    formatted_s = self.downcase.gsub(/\W/, "")
    return (formatted_s == formatted_s.reverse)
  end

  def count_words
    splitted_arr = self.gsub(/\W/, ' ').split
    word_hash = Hash.new(0)
    splitted_arr.each do |word|
      word_hash[word.downcase] += 1
    end
    return word_hash
  end

  def anagram_groups
    return [] if self.length == 0
    splitted_arr = self.split
    return splitted_arr.group_by { |x| x.downcase.chars.sort.join }.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
