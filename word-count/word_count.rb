class Phrase
  # attr :phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def counts(phrase)
    words = phrase.split(' ').sort
    word_hash = {}
    words.each do |word|
      if word_hash.has_key?(word)
        word_hash[word] = word_hash[word] + 1  
      else
        word_hash[word] = 1
      end
    end
    word_hash
  end

end

a = Phrase.new
a.counts("This is a song that does not end. yes it goes on and on this friend")


# words.inject({}) {|key, value| }


# hash = [[:first_name, 'Shane'], [:last_name, 'Harvie']].inject({}) do |result, element|
#   result[element.first] = element.last
#   result
# end

# hash # => {:first_name=>"Shane", :last_name=>"Harvie"}


# f.each_line { |line|
#   words = line.split
#   words.each { |w|
#     if h.has_key?(w)
#       h[w] = h[w] + 1
#     else
#       h[w] = 1
#     end
#   }
# }