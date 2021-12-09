class Day2
  def input_data
    @input_data ||= File.read('./input.txt').split("\n")
  end

  def run
    horizontal = 0
    depth = 0
    aim = 0

    input_data.each do |row|
      direction, magnitude = row.split(" ")

      case direction
      when "forward"
        horizontal += magnitude.to_i
        depth += aim * magnitude.to_i
      when "down"
        aim += magnitude.to_i
      when "up"
        aim -= magnitude.to_i
      end
    end
    p horizontal * depth
  end
end
