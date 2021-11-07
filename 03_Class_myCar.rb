class MyCar
  attr_accessor :color
  attr_reader :year
  attr_reader :design

  def initialize(year, design, color)
    @year = year
    @design = design
    @color = color
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph"
  end

  def brake (number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed 
    puts "You are now going #{@current_speed} mph"
  end

  def shut_down
    @current_speed = 0
    puts "let's park this bad boy"
  end

  def spray_paint(color)
    self.color = color
      puts "Your new #{color} paint job looks great!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles/gallons} miles per gallons of gas "
  end

  def to_s
    puts "My car is #{color}, #{year}, #{design} !"
  end
end

# MyCar.gas_mileage(13, 351)


sentra = MyCar.new(2016, "sentra", "Gray")
puts sentra
# sentra.gas_mileage(10, 200)
# sentra.speed_up(20)
# sentra.current_speed
# sentra.speed_up(20)
# sentra.current_speed
# sentra.speed_up(20)
# sentra.current_speed
# sentra.brake(30)
# sentra.current_speed
# sentra.shut_down
# sentra.current_speed
# sentra.color = "Silver"
# puts sentra.color
# puts sentra.year
# sentra.spray_paint("Golden Brown")
