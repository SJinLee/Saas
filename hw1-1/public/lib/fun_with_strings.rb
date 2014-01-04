module FunWithStrings
  def palindrome?
    # your code here
    a = self.upcase.gsub(/[^A-Za-z]/,'')
    a == a.reverse
  end
  def count_words
    # your code here
    a = self.downcase.gsub(/[^A-Za-z \t\n]/,'')
    a.split.inject(Hash.new(0)) {|h,v| h[v] += 1; h}
  end
  def anagram_groups
    # your code here
    a = self.gsub(/[^A-Za-z \t\n]/,'')
    a.split.inject(Hash.new([])) do
       |h,v|
       h[v.downcase.chars.sort.join] += [v];
       h
    end.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
