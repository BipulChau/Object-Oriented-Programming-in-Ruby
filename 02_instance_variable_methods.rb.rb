class GoodDog
  def initialize
    puts "This object was initialized"
  end
end

oggy = GoodDog.new

# The initialize method gets called every time you create a new object. 
# That's odd, don't we call the new method when we create an object? 
# Yes, calling the new class method eventually leads us to the initialize instance method. 
# We'll talk about the difference between class methods and instance methods later. 
# In the above example, instantiating a new GoodDog object triggered the initialize method and ...
# resulted in the string being outputted. We refer to the initialize method as a constructor, ....
# because it gets triggered whenever we create a new object.

