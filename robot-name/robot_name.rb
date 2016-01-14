class Robot
  attr_accessor :name

  def initialize
    @name = ""
    2.times { |x| @name << [*('A'..'Z')].sample }
    3.times { |x| @name << [*(0..9)].sample.to_s }
  end

  def reset
    initialize
  end
end
