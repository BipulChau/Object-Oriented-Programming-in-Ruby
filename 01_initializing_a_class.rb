# As we mentioned earlier, modules are another way to achieve polymorphism in Ruby.
#  A module is a collection of behaviors that is usable in other classes via mixins. 
# A module is "mixed in" to a class using the include method invocation. 
# Let's say we wanted our GoodDog class to have a speak method but we have other classes .....
# that we want to use a speak method with too. Here's how we'd do it.

module Speak
  def speak (sound)
    puts sound
  end
end

class   GoodDog
include Speak
end

class HumanBeing
include Speak
end

sparky = GoodDog.new
sparky.speak("Bhau! Bhau!")
bipul = HumanBeing.new
bipul.speak("Oggy Poggy")

# Note that in the above example, both the GoodDog object, which we're calling sparky, ......
# as well as the HumanBeing object, which we're calling bob, have access to the speak instance method. 
# This is possible through "mixing in" the module Speak. It's as if we copy-pasted the speak method ......
# into the GoodDog and HumanBeing classes.

puts "---GoodDog Ancestors---"
puts GoodDog.ancestors
puts " "
puts "---HumanBeing Ancestors---"
puts HumanBeing.ancestors

# The Speak module is placed right in between our custom classes (i.e., GoodDog and HumanBeing) and... 
# the Object class that comes with Ruby. In Inheritance you'll see how the method lookup chain works ...
# when working with both mixins and class inheritance.

# This means that since the speak method is not defined in the GoodDog class, the next place...
# it looks is the Speak module. This continues in an ordered, linear fashion, until the method...
# is either found, or there are no more places to look.