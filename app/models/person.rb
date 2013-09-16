class Person
  
  attr_accessor :first_name,:last_name,:biography,:admin,:age

  def initialize(attributes = {})
    attributes.each do |name,value|
      send("#{name}=",value)
    end
  end
  
end