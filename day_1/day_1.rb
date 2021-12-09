class Day1
  def input_data
    @input_data ||= File.read('./input.txt').split("\n").map(&:to_i)
  end

  def run
    input_data.each_cons(2).select {|a| a[1] > a[0]}.count
  end

  def run2
    count = 0

    triples = input_data.each_cons(3).to_a

    triples.each_with_index do |a,i|
      next unless i < triples.length - 1

      count += 1 if triples[i+1].sum > triples[i].sum
    end
    count
  end
end
