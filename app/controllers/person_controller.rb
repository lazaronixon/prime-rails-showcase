class PersonController < ApplicationController
  
  def create
    @person = Person.new(person_params)  
    
    respond_to do |format|
      format.html { render action: 'show' }              
    end        
  end       
  
  private
  
  def person_params
    params.require(:person)
  end    
  
end
