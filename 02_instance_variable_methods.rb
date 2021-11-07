class GoodDog
  attr_accessor :name, :height, :weight
  def initialize (n, h, w)
    @name = n
    @height = h
    @weight = w 
  end

  def speak 
    "#{@name} says Bhau!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h 
    self.weight = w 
  end

  def info 
    "#{name} weighs #{weight} and is #{height} tall"
  end 

  def some_method
    self.info
  end

end

oggy = GoodDog.new("Oggy", 2.2, 10)
puts oggy.some_method
oggy.change_info("Haguwa Khatta", 3, 15)
puts oggy.info




