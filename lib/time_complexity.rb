module TimeComplexity
  def self.tape_equilibrium a
    first_part_sum = 0
    second_part_sum = a.sum
    minimum = nil

    a.pop

    a.each do |el|
      first_part_sum += el
      second_part_sum -= el
      result = (first_part_sum - second_part_sum).abs
      minimum = result if minimum.nil? || result < minimum

      return 0 if minimum == 0
    end

    minimum
  end
end
