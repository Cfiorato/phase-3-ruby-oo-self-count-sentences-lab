require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split(/\.|\?|\!/).filter {|sentence| !sentence.empty?}.length
  end
end

puts "1. 2! 3? 4? 5! 6. ".count_sentences