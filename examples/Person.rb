class Class
  def loud_name
    # return name.upcase + "is an upper case class"
    "#{name.upcase} is an upper case class"
  end
  
  def evil( *args )
    puts "MUAHAHA"
  end
end

class Person  
  attr_accessor :first_name
  
  evil :id, :pencil
  
  puts loud_name
  # overrides initialize method which normally takes any number of arguments
  def initialize(first_name)
    @first_name = first_name
  end
  
  def self.species
    "Homo Sapien"
  end
  
  # def first_name
  #   @first_name
  # end
end

class AProgram
  person = Person.new("Mike")
  puts person.first_name
end