def substrings(word, dictionary)
    word = word.downcase  # Converts text to downcase
    result = Hash.new(0)  # Creates hash (default value = 0)

    dictionary.each do |substring|
      count = word.scan(substring).length  # Counts number of appearances
      result[substring] = count if count > 0  # Saves it ONLY IF it appears
    end
  
    result
end

