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
=begin
    result = Array.new # adding to this
    ht = self.count_words #reusing code for the win!
    ht.each do |word, count| #letter count per word in nested hash tables; we don't need the count but it's easier
      ht[word] = Hash.new(0)
      self.each_char do |letter|
        ht[word][letter] += 1
      end
    end
    #ht.map { |key, val| val.map { |ikey, ival| } }
=end
    return self.gsub(/^a-zA-Z /, '').split(' ').group_by { |x| x.downcase.chars.sort }.values
  end
end

#puts "the teh one oen test tested".anagram_groups

=begin
ht = {
  "word1" => {
    "L" => 1,
    "M" => 2,
  }
  "word2" => {
    "N" => 3
    "O" => 4
  }
}
result = Array.new
ht.each do { |word, letter| }
  letter = letter.to_a #hash table of nested arrays
  letter.sort_by { |letr, count| letr } #arrays under both key "a" and key "b" should be equal
  for i=0 to ht.length-1 do
    for j=i+1 to ht.length do
      if i[1] == j[1] {
        result <<
      }
#=end

htest = Hash.new
a = Hash.new
a["a"] = 2
a["b"] = 3
b = Hash.new
b["b"] = 3
b["a"] = 2
htest["a"] = a
htest["b"] = b
htest["a"] = htest["a"].to_a
htest["a"].sort
#htest +=
# make all the above functions available as instance methods on Strings:
=end

class String
  include FunWithStrings
end

puts "the teh one oen test tested".anagram_groups