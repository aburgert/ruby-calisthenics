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
    #hash tables of letter counts in each word
    #sort hash tables
    #if equal add to an array
    #return arrays arrayed
    ht = Hash.new(0)
    arr = self.downcase.gsub(/[^a-z ]/, '').split(' ')
    arr.each do |w|
      ht[w] += 1
    end
    ht.each do |word, count|
      wht[word] = Hash.new(0)
      self.each_char do |letter|
        ht[word][letter] += 0
      end
    end
  end
end

a = Hash.new
a["a"] = 2
a["b"] = 3
b = Hash.new
b["b"] = 3
b["a"] = 2
a.each do |l, c|
  puts "#{l}:\t#{c}"
end
b.each do |l, c|
  puts "#{l}:\t#{c}"
end
puts a.to_a.inspect
puts b.to_a.inspect
puts "#{b.inspect} # before sort"
b.sort_by { |l,c| l.to_s }
puts "#{b.inspect} # after sort"
# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
