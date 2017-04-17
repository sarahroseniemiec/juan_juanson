

Explain the relationship between .new() and def initialize().

initialize()
The initialize method runs every time you create (instantiate) a new instance of an object using '.new'. Can have arguments passed to it.

.new()
Creates a new instantiation of an object and stores it to whatever variable you assign it to.

Define class, subclass, instance, and self.
class: the blueprint
subclass: inherits from the parent class but also have their own attributes and methods
instance: object created from the class or subclass blueprint
self: refers to itself kinda like this in javascript

Properly define instance and class variables.
@ instance variable - belongs only to the instance of the class
@@ class variable - belongs to the class all the instances of the class will share the class variables

Properly define instance and class methods
instance methods - gets called on the instance of a class and belongs to just that instance not the entire class
class methods - gets called on the class and belongs to the entire class

Distinguish whether a piece of data is best suited to being stored in a local, instance, or class variable.
use instance variable if you want to have access to it for the instance i.e. this car is blue but another car might be red
use class variables if you want all instances of that class to have access i.e. all cars are in a traffic jam
use local variables for variables you only need to have access to inside the method they are in.


Describe the relationship of attr_ and “getter” and “setter” methods.
attr_ stands for attribute. Since Ruby, unlike javascript does not have a built in way to read or write attributes (properties) you must do that in order to read(getter)(get the value of an attribute) or set (setter) (write the value of an attribute).

Distinguish whether a piece of data is best suited to having its accessibility defined by attr_reader, attr_writer, attr_accessor or none of the above.
If you want to be able to see what the value of a property is use attr_reader. For example you might not want people to be able to change their username but you want them to be able to see what their username is. If you want to be able to set what the value of a property is use attr_writer. For example if you want someone to be able to change their favorite book. If you want to do both use attr_accessor.
