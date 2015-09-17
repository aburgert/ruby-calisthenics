module FunWithStrings
  def palindrome?
    #1. strip non-alpha characters w/ gsub?
    pal = self
    pal.downcase!
    #puts "Pre-substitution\t#{pal}"
    pal.gsub!(/[^a-z]/, '')
    #puts "Post-substitution:\t#{pal}"
    #2. separate string into two parts - odd-lengths have middle in both strings
    #2a. self.reverse
    lap = pal.reverse
    return pal == lap ? true : false
  end
  def count_words
      arr = self.downcase.gsub(/[^a-z ]/, '').split(' ')
      ht = Hash.new(0)
      arr.each do |w|
        ht[w] += 1
      end
      
      #ht.each do |key, val|
      #  puts "#{key}\t==>\t#{val}"
      #end
      return ht
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
