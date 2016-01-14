class Hamming
  def self.compute(strand_1, strand_2)
   raise(ArgumentError) if strand_1.length != strand_2.length
    strand_1 = strand_1.chars
    strand_2 = strand_2.chars
    hamming = 0
    strand_1.length.times {|x| hamming += 1 if strand_1.pop != strand_2.pop }
    hamming
  end
end

puts Hamming.compute('ASD', 'DSA')