class ApplicationController < ActionController::Base
  before_filter:set_themes
  
  add_breadcrumb :index, :root_path
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  
  def set_themes      
    @dropdown_change = %{                      
                      var themeLink = $('#theme');
                      var newThemeURL = '/assets/' + $(this).val() + '/theme.css';
                      themeLink.attr('href', newThemeURL);
    }        
    
    @dropdown_themes =  ['afterdark' , 'afternoon', 'afterwork', 'aristo', 'black-tie', 'blitzer', 'bluesky', 'bootstrap', 'casablanca', 'cruze',  
      'cupertino', 'dark-hive', 'dot-luv', 'eggplant', 'excite-bike', 'flick', 'glass-x', 'home', 'hot-sneaks', 'humanity', 'le-frog', 'midnight',  
      'mint-choc', 'overcast', 'pepper-grinder', 'redmond', 'rocket', 'sam', 'smoothness', 'south-street', 'start', 'sunny', 'swanky-purse', 'trontastic',  
      'ui-darkness', 'ui-lightness', 'vader']             
    @dropdown_content = %{<img src="/showcase/resources/demo/images/themes/{option}.png"/><span style="float:right;font-size:14px">{option}</span>}
  end   
  
end
