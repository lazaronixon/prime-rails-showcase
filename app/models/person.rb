class Person
  
  attr_accessor :id,:first_name,:last_name,:biography,:admin,:age

  def initialize(attributes = {})
    attributes.each do |name,value|
      send("#{name}=",value)
    end
  end
  
  def self.all
    names = ["Nixon","Cagatay","Rails","Silva",'Marcio','Almeida','Amaral','Joseph','Ed','Burns','Civicy','Glicejo','Marcos','Bruno','Lais','Paulo']    
    
    persons = []
    for i in 0..34
      person = Person.new()
      person.id = i
      person.first_name = names[Random.rand(0..15)]
      person.last_name =  names[Random.rand(0..15)]
      person.admin = rand(2) > 0
      person.age = Random.rand(18..99)       
      persons  << person
    end   
    return persons
  end
  
end