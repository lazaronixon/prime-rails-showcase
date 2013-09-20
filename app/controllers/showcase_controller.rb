class ShowcaseController < ApplicationController
    
  def breadcrumb
    add_breadcrumb "Breadcrumb" , showcase_breadcrumb_path
  end  
       
  def dropdown
    @dropdown_options = [['Select One','0'],['Options 1','1'],['Options 2','2'],['Options 3','3']]
  end     
  
  def change_theme
    session[:theme_var] = params['theme_select']
    redirect_to(:back)
  end
  
  def growl_info
    flash[:info] = 'Message Detail here.'
    redirect_to '/showcase/growl'
  end
  
  def growl_warn
    flash[:warning] = 'Message Detail here.'
    redirect_to '/showcase/growl'
  end  
  
  def growl_error
    flash[:error] = 'Message Detail here.'
    redirect_to '/showcase/growl'
  end    
  
  def growl_multiple
    flash[:info] = 'Message Detail here.'
    flash[:warning] = 'Message Detail here.'
    flash[:error] = 'Message Detail here.'
    redirect_to '/showcase/growl'
  end     
  
end
