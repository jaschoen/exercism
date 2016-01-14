class Complement
  VERSION = 2
  def self.of_dna(strand)
    strand = strand.chars
    raise(ArgumentError) if strand.any? {|x| x =~ /[^TACG]/}
    output = []
    strand.each do |letter|
      case letter
      when "T"
        output << "A"
      when "A"
        output << "U"
      when "C"
        output << "G"
      when "G"
        output << "C"
      end
    end
    output.join('')
  end

  def self.of_rna(strand)
    strand = strand.chars
    raise(ArgumentError) if strand.any? {|x| x =~ /[^AUCG]/}
    output = []
    strand.each do |letter|
      case letter
      when "A"
        output << "T"
      when "U"
        output << "A"
      when "C"
        output << "G"
      when "G"
        output << "C"
      end
    end
    output.join('')
  end

end

# class Complement
#   def self.of_dna(strand)
#     strand.gsub(/[TACG]/, 'T': 'A', 'A': 'U', 'C': 'G', 'G': 'C')
#   end
# end

# puts "The complement is" 
# p  Complement.of_dna('TAGC')



