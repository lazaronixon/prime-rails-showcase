class ShowcaseController < ApplicationController
  
  def breadcrumb
    add_breadcrumb "Breadcrumb" , showcase_breadcrumb_path
  end  
  
end
