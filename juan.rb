# class Person
#   def say_hello()
#     puts "oh hello."
#   end
# end
#
# liza = Person.new()

# class User
#   def greeting
#     puts "hello nice to meet you"
#   end
# end


# class User
#   def initialize
#     puts "hello I'm a new user"
#   end
# end

# class User
#   def initialize(firstname, lastname)
#     puts "I'm a new user named #{firstname} #{lastname}"
#   end
# end

# class User
#   def initialize(firstname, lastname)
#     @firstname = firstname
#     @lastname = lastname
#   end
#   def full_name
#     return "Hello my name is #{@firstname} #{@lastname}"
#   end
# end

# class User
#   def initialize(firstname, lastname)
#      @firstname = firstname
#      @lastname = lastname
#    end
#
#    def set_firstname(firstname)
#      @firstname = firstname
#    end
#
#    def get_firstname
#      return @firstname
#    end
#
#    def get_fullname
#      return "#{@firstname.capitalize} #{@lastname.capitalize}"
#    end
# end

# class User
#   attr_reader :firstname, :lastname
#   attr_writer :firstname
#   def initialize (firstname, lastname)
#     @firstname = firstname
#     @lastname = lastname
#   end
# end


# class User
#   def initialize(firstname, lastname)
#      @firstname = firstname
#      @lastname = lastname
#    end
#
#    def set_firstname(firstname)
#      @firstname = firstname
#    end
#
#    def get_firstname
#      return @firstname
#    end
#
#    def set_lastname(lastname)
#      @lastname = lastname
#    end
#
#    def get_lastname
#      return @lastname
#    end
# end


# class User
#   attr_accessor :firstname, :lastname
#   def initialize(firstname, lastname)
#     @firstname = firstname
#     @lastname = lastname
#   end
# end


# class User
#   attr_accessor :firstname, :lastname
#   @@all = 0
#
#   def initialize(firstname, lastname)
#     @firstname = firstname
#     @lastname = lastname
#     @@all += 1
#   end
#
#   def count
#     return @@all
#   end
# end
#
# class User
#   attr_accessor :firstname, :lastname
#   @@all = 0
#
#   def initialize(firstname, lastname)
#     @firstname = firstname
#     @lastname = lastname
#     @@all += 1
#   end
#
#   def User.count
#     return @@all
#   end
# end


# class User
#   attr_accessor :firstname, :lastname
#   @@all = 0
#
#   def initialize(firstname, lastname)
#     @firstname = firstname
#     @lastname = lastname
#     @@all += 1
#   end
#
#   def count
#     return @@all
#   end
#
#   def User.new
#     puts "I've hijacked the 'new' and the 'initialize' methods!"
#   end
# end
#
# juan = User.new("Juan", "Juanson")

# class Vehicle
#   def initialize (color = 'blue', fuel_level = 0, type = 'volvo')
#     @type = type
#     @color = color
#     @fuel_level = fuel_level
#   end
# end

# class Vehicle
#     attr_accessor :type, :color, :fuel_level
#     def initialize ( opts = {} )
#       @type = opts[:type] || "volvo"
#       @color = opts[:color] || "blue"
#       @fuel_level = opts[:fuel_level] || 0
#       puts opts
#     end
#
# end


# class Vehicle
#   attr_accessor :type, :color, :fuel_level
#
#   def initialize( opts = {} )
#     @type = opts[:type] || 'Volvo'
#     @color = opts[:color] || 'blue'
#     @fuel_level = opts[:fuel_level] || 0
#     puts opts
#   end
# end

# class Bottle
#   def verse
#     line_one
#   end
#   private
#   def line_one
#     "99 bottles of beer on the wall"
#   end
# end
# class User
#   attr_accessor :firstname, :lastname
#   @@all = []
#   def initialize(firstname, lastname)
#     @firstname = firstname
#     @lastname = lastname
#     puts "Creating #{@firstname}"
#     @@all.push(self)
#   end
#   def show_firstname
#     return self.firstname
#   end
#   def self.show_all
#     return @@all
#   end
# end


class Being
  attr_accessor :name, :noise, :eyes, :limbs

  def initialize ( name = nil, noise = nil, eyes = 2, limbs = 4 )
    @name = name
    @eyes = eyes
    @limbs = limbs
  end

  def how_many_eyes
    puts "I have #{@eyes} eyes!"
  end
end

class Person < Being
  def speak_name
    puts "Oh hey, my name's #{@name}!"
  end
end

class Animal < Being
  attr_accessor :noise
  def initialize (noise)
    @noise = noise
  end
  def make_noise
    puts "I make this noise: #{@noise}!"
  end
end
