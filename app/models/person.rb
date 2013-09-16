class Person
  
  attr_accessor :first_name,:last_name,:biography,:admin,:age

  def initialize(param)
    @first_name = param['first_name'] 
    @last_name = param['last_name']
    @biography = param['biography']
    @admin = param['admin']
    @age = param['age']
  end 
  
end