def substrings(word, dictionary)
    word = word.downcase  # Convertimos el texto a minúsculas
    result = Hash.new(0)  # Creamos un hash con valor por defecto 0
  
    dictionary.each do |substring|
      count = word.scan(substring).length  # Contamos las apariciones de la subcadena
      result[substring] = count if count > 0  # Guardamos solo si aparece al menos una vez
    end
  
    result
  end
  
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
  puts substrings("Howdy partner, sit down! How's it going?", dictionary)
  