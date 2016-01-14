class Raindrops
  def self.convert(num)
    sound = ""
    sound = sound + "Pling" if num % 3 == 0
    sound = sound + "Plang" if num % 5 == 0
    sound = sound + "Plong" if num % 7 == 0
    sound = num.to_s if sound == ""
    sound
  end
end


