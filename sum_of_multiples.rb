class SumOfMultiples
  attr_reader :numbers

  def initialize(*numbers)
    @numbers = *numbers
  end

  def to(max)
    numbers.each_with_object([]) do |number, output|
      output.concat number.step(max - 1, number).to_a
    end.uniq.sum
  end
end

module BookKeeping
  VERSION = 2
end
