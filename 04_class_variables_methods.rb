class GoodDog
  DOG_YEARS = 7
  attr_accessor :name, :age

  @@number_of_dogs = 0

  def initialize(n, a)
    @@number_of_dogs += 1
    self.name = n
    self.age = a * DOG_YEARS
  end

  def change

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def to_s 
    "This doggie's name is #{name} and it is #{age} years old in dog years"
  end
end


oggy = GoodDog.new("Oguwa", 4)
# puts oggy.age
# puts GoodDog.total_number_of_dogs
# p oggy


puts "#{oggy}"
puts oggy





