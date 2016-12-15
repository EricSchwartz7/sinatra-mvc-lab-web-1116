require 'pry'
class PigLatinizer

  # attr_accessor :string
  #
  # def initialize(string)
  #   @string = string
  # end


  def piglatinize(word)
      vowels = ["a", "e", "i", "o", "u"]
      wordy = word.split("")
      vowel = wordy.find do |letter|
        vowels.include?(letter)
      end
      index = wordy.index(vowel)
      if vowels.include?(wordy[0].downcase)
        new_word = wordy
      else
        new_word = wordy[index..-1] + wordy[0..index-1]
      end
      if vowels.include?(new_word[-1].downcase) || vowels.include?(wordy[0].downcase)
        new_word.join + "way"
      else
        new_word.join + "ay"
      end
  end

  def to_pig_latin(sentence)
    sentence.split(" ").collect do |word|
      piglatinize(word)
    end.join(" ")
  end




  #   sentence.split(" ").collect do |word|
  #     vowels = ["a", "e", "i", "o", "u"]
  #     wordy = word.split("")
  #     first_letter = wordy.shift
  #     new_word = wordy.push(first_letter).join
  #     # binding.pry
  #     if vowels.include?(new_word[-1].downcase)
  #       piggy = new_word + "way"
  #     else
  #       piggy = new_word + "ay"
  #     end
  #   end.join(" ")
  #   # binding.pry
  # end

end
