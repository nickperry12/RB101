# What is encapsulation?
# How does encapsulation relate to the public interface of a class?

# module GetName 
#   def get_name
#     self.name
#   end
# end 

class Creature
  #attr_reader :name

  #include GetName
  
  private

  def get_name
    'hi'
  end

  #attr_reader :name
end

class Person < Creature
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  
  def some_method
    get_name
  end
end

person = Person.new("esther")
p person.some_method






class Fruit
  def initialize(name)
    @name = name
  end

  def compare(other)
    puts "I am #{type} and you are #{other.type}"
  end

  protected
  def type
    name
  end

  #private
  attr_reader :name
end

class Apple < Fruit
  #protected
  def type
    name
  end
end

# class Orange < Fruit; end
# class Pear < Fruit; end

apple = Apple.new("Macintosh")
p apple.type
# orange = Orange.new("Navel")
# pear = Pear.new("Bradford")

# apple.compare(orange)
# orange.compare(pear)
# pear.compare(apple)



# You can only use private methods with:

# Other methods from the same class
# Methods inherited from the parent class
# Methods included from a module

# https://books.google.com/books?id=jcUbTcr5XWwC&pg=PA261&lpg=PA261&dq=ruby+constant+scope&source=bl&ots=fKEgwi2xiA&sig=45MLG-3_7sRFKgisbc4cVQ1MF7w&hl=en&sa=X&ved=2ahUKEwjV7oLDi6XeAhUP7p8KHRp8AE04ChDoATABegQICRAB#v=snippet&q=private%20methods&f=false
