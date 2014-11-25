module TimeComplexity
  def self.tape_equilibrium a
    first_part_sum = 0
    second_part_sum = a.inject{ |sum, x| sum += x }
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

  def self.frog_jmp x, y, d
    ((y - x)/d.to_f).ceil
  end

  def self.perm_missing_elem a
    sorted = a.sort
    result = sorted.first
    sorted.each.with_index do |el, idx|
      break unless result == el
      result = el + 1
    end

    result
  end
end
