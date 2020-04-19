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

  attr_reader :pegs

  def self.random(num)
    arr =[]
    num.times { arr <<  POSSIBLE_PEGS.keys[rand(POSSIBLE_PEGS.length)] }
    Code.new(arr)  
  end

  def self.from_string(str)
    Code.new(str.split(''))
  end

  def [](index); @pegs[index] end
  def length; @pegs.length end

  def num_exact_matches(code_instance)
    match = 0
    (0...code_instance.length).each do |i|
      match += 1 if code_instance[i] == @pegs[i]
      i += 1
    end
    match
  end

  def num_near_matches(code_instance)
    match = 0

    (0...code_instance.length).each do |i|
      match += 1 if @pegs.include?(code_instance[i])
      i += 1
    end
    match - num_exact_matches(code_instance)
  end

  def ==(code_instance)
    code_instance == @pegs ? true : false
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