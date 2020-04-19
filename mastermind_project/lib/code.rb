class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(arr)
    arr.each { |val| return false unless POSSIBLE_PEGS.include?(val.upcase)}
    true
  end

  def initialize(arr)
    a = Code.valid_pegs?(arr)
    Code.valid_pegs?(arr) ? @pegs = arr.map(&:upcase) : raise("You have enterned invalid pegs")
  end
  attr_reader :pegs



end


# cla = Code.new(['b', 'r', 't'])
# p Code.valid_pegs?(['B', 'R', 'R'])
# p cla.pegs