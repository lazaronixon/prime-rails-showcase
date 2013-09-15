class ShowcaseController < ApplicationController
  
  def breadcrumb
    add_breadcrumb "Breadcrumb" , showcase_breadcrumb_path
  end  
  
  def dropdown
    @dropdown_options = [['Select One','0'],['Options 1','1'],['Options 2','2'],['Options 3','3']]
    @dropdown_themes =  ['afterdark' , 'afternoon', 'afterwork', 'aristo', 'black-tie', 'blitzer', 'bluesky', 'bootstrap', 'casablanca', 'cruze',  
      'cupertino', 'dark-hive', 'dot-luv', 'eggplant', 'excite-bike', 'flick', 'glass-x', 'home', 'hot-sneaks', 'humanity', 'le-frog', 'midnight',  
      'mint-choc', 'overcast', 'pepper-grinder', 'redmond', 'rocket', 'sam', 'smoothness', 'south-street', 'start', 'sunny', 'swanky-purse', 'trontastic',  
      'ui-darkness', 'ui-lightness', 'vader']        
    @dropdown_content = %{<img src="resources/demo/images/themes/{option}.png"/><span style="float:right;font-size:14px">{option}</span>}
  end    
  
  def listbox
    @dropdown_options = [['Select One','0'],['Options 1','1'],['Options 2','2'],['Options 3','3']]
    @dropdown_themes =  ['afterdark' , 'afternoon', 'afterwork', 'aristo', 'black-tie', 'blitzer', 'bluesky', 'bootstrap', 'casablanca', 'cruze',  
      'cupertino', 'dark-hive', 'dot-luv', 'eggplant', 'excite-bike', 'flick', 'glass-x', 'home', 'hot-sneaks', 'humanity', 'le-frog', 'midnight',  
      'mint-choc', 'overcast', 'pepper-grinder', 'redmond', 'rocket', 'sam', 'smoothness', 'south-street', 'start', 'sunny', 'swanky-purse', 'trontastic',  
      'ui-darkness', 'ui-lightness', 'vader']        
    @dropdown_content = %{<img src="resources/demo/images/themes/{option}.png"/><span style="float:right;font-size:14px">{option}</span>}
  end    
  
end
