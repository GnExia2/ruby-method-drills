##############################
#### MANIPULATING HASHES ####
##############################
#character_count
  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash
  def character_count(sentence)
    char_counts = {}
    sentence.each_char do |char|
      char = char.downcase
      if char_counts[char].nil?
        char_counts[char] = 1
      else
        char_counts[char] += 1
      end
    end
    char_counts
  end

## STRETCH ##
#word_count
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts

  def word_count(sentence)
    word_counts = {}
    sentence.split(" ").each do |word|
      word = word.downcase.gsub(/[^a-z]/i, "")
      word_counts[word].nil? ? word_counts[word] = 1 : word_counts[word] += 1
    end
    word_counts
  end


## STRETCH ##
#most_frequent_word
  # takes in a string
  # finds the word in a string that appears with the most frequency

def most_frequent_word(input)
  word_counts = word_count(input)
  word_counts.empty? ? nil : word_counts.invert.max[1]
end2
