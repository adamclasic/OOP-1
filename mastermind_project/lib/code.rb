class Code
  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(arr)
    arr.each { |val| return false unless POSSIBLE_PEGS.include?(val.upcase) }
    true
  end

  def initialize(arr)
    if Code.valid_pegs?(arr)
      @pegs = arr.map(&:upcase)
    else
      raise("You have enterned invalid pegs")
    end
  end

  # def hid; @@pegs = @pegs end

  attr_reader :pegs

  def self.random(num)
    arr =[]
    num.times { arr <<  POSSIBLE_PEGS.keys[rand(POSSIBLE_PEGS.length)] }
    Code.new(arr)  
  end

  def self.from_string(str)
    Code.new(str.split(''))
  end

end


# cla = Code.new(['b', 'b', 'y'])
# p Code.valid_pegs?(['B', 'R', 'R'])
# p cla.pegs
p Code.random(32)


# %w(jas jj ls fj).
# a = rand(10)
# p a
# p a.class