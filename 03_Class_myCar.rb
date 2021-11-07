class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, model, color)
    @year = year
    @model = model
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
end

sentra = MyCar.new(2016, "sentra", "Gray")
sentra.speed_up(20)
sentra.current_speed
sentra.speed_up(20)
sentra.current_speed
sentra.speed_up(20)
sentra.current_speed
sentra.brake(30)
sentra.current_speed
sentra.shut_down
sentra.current_speed
sentra.color = "Silver"
puts sentra.color
puts sentra.year
sentra.spray_paint("Golden Brown")
