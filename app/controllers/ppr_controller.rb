class PprController < ApplicationController  
  
  def setfirstname   
    @firstname = params['name']  
       
    respond_to do |format|            
      partial_resp = render_to_string(partial: "setfirstname_content") 
      output = p_ajax_resp(update: [{id: 'display',resp: partial_resp}])
      format.xml { render :xml => output }                      
    end
  end    
  
  def ajax_growl
    flash[:info] = params['name_ajax']     
    respond_to do |format|            
      partial_resp = render_to_string(partial: "ajax_growl_content") 
      output = p_ajax_resp(update: [{id: 'growl',resp: partial_resp}])
      format.xml { render :xml => output }                      
    end    
  end    

end

