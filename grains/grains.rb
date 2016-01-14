class Grains
  

  def self.square(n)
    2 ** (n-1)
  end

  def self.total
    (1..64).inject(0) {|acc, n| acc + Grains.square(n)}
  end


end

