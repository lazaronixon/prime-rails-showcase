class PersonController < ApplicationController  
  
  def create
    @person = Person.new(person_params)     
    render action: 'show'    
  end       
  
  private
  
  def person_params
    params.require(:person)
  end    
  
end
