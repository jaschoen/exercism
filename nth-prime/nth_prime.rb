class Prime
  def self.is_prime?(num)
    return false if num <= 1
    2.upto(Math.sqrt(num)) do |x|
      return false if num % x == 0
    end
    true
  end

  def self.list_of_primes(length)
    primes = []
    x = 2
    until primes.count == length
        primes << x if is_prime?(x)
        x += 1
    end
    primes
  end

  def self.nth(x)
    raise ArgumentError if x < 1
    list_of_primes(x).last
  end
end


puts Prime.nth(5)