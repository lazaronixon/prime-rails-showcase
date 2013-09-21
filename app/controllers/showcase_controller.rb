class ShowcaseController < ApplicationController
    
  def breadcrumb
    add_breadcrumb "Breadcrumb" , showcase_breadcrumb_path
  end  
       
  def dropdown
    @dropdown_options = [['Select One','0'],['Options 1','1'],['Options 2','2'],['Options 3','3']]
  end    
  
  def picklist
    @dropdown_car = [['Volkswagen','1'],['Ford','2'],['Mercedes','3'],['Audi','4'],['BMW','5'],
      ['Honda','6'],['Porsche','7'],['Chevrolet','8'],['Jaguar','9']]
  end  
  
  def autocomplete
    
    @autocomplete_content = %{<img src="/showcase/resources/demo/images/themes/{option.label}.png"/><span style="float:right;font-size:14px">{option.label}</span>}
    
    @countries = ['Afghanistan', 'Albania', 'Algeria', 'Andorra', 'Angola', 'Antarctica', 'Antigua and Barbuda', 'Argentina', 'Armenia',
      'Australia', 'Austria', 'Azerbaijan', 'Bahamas', 'Bahrain', 'Bangladesh', 'Barbados', 'Belarus', 'Belgium', 'Belize', 'Benin', 'Bermuda',
      'Bhutan', 'Bolivia', 'Bosnia and Herzegovina', 'Botswana', 'Brazil', 'Brunei', 'Bulgaria', 'Burkina Faso', 'Burma', 'Burundi', 'Cambodia',
      'Cameroon', 'Canada', 'Cape Verde', 'Central African Republic', 'Chad', 'Chile', 'China', 'Colombia', 'Comoros', 'Congo, Democratic Republic',
      'Congo, Republic of the', 'Costa Rica', 'Cote d\'Ivoire', 'Croatia', 'Cuba', 'Cyprus', 'Czech Republic', 'Denmark', 'Djibouti', 'Dominica',
      'Dominican Republic', 'East Timor', 'Ecuador', 'Egypt', 'El Salvador', 'Equatorial Guinea', 'Eritrea', 'Estonia', 'Ethiopia', 'Fiji', 'Finland',
      'France', 'Gabon', 'Gambia', 'Georgia', 'Germany', 'Ghana', 'Greece', 'Greenland', 'Grenada', 'Guatemala', 'Guinea', 'Guinea-Bissau', 'Guyana',
      'Haiti', 'Honduras', 'Hong Kong', 'Hungary', 'Iceland', 'India', 'Indonesia', 'Iran', 'Iraq', 'Ireland', 'Israel', 'Italy', 'Jamaica', 'Japan',
      'Jordan', 'Kazakhstan', 'Kenya', 'Kiribati', 'Korea, North', 'Korea, South', 'Kuwait', 'Kyrgyzstan', 'Laos', 'Latvia', 'Lebanon', 'Lesotho',
      'Liberia', 'Libya', 'Liechtenstein', 'Lithuania', 'Luxembourg', 'Macedonia', 'Madagascar', 'Malawi', 'Malaysia', 'Maldives', 'Mali', 'Malta',
      'Marshall Islands', 'Mauritania', 'Mauritius', 'Mexico', 'Micronesia', 'Moldova', 'Mongolia', 'Morocco', 'Monaco', 'Mozambique', 'Namibia',
      'Nauru', 'Nepal', 'Netherlands', 'New Zealand', 'Nicaragua', 'Niger', 'Nigeria', 'Norway', 'Oman', 'Pakistan', 'Panama', 'Papua New Guinea',
      'Paraguay', 'Peru', 'Philippines', 'Poland', 'Portugal', 'Qatar', 'Romania', 'Russia', 'Rwanda', 'Samoa', 'San Marino', ' Sao Tome',
      'Saudi Arabia', 'Senegal', 'Serbia and Montenegro', 'Seychelles', 'Sierra Leone', 'Singapore', 'Slovakia', 'Slovenia', 'Solomon Islands',
      'Somalia', 'South Africa', 'Spain', 'Sri Lanka', 'Sudan', 'Suriname', 'Swaziland', 'Sweden', 'Switzerland', 'Syria', 'Taiwan', 'Tajikistan',
      'Tanzania', 'Thailand', 'Togo', 'Tonga', 'Trinidad and Tobago', 'Tunisia', 'Turkey', 'Turkmenistan', 'Uganda', 'Ukraine', 'United Arab Emirates',
      'United Kingdom', 'United States', 'Uruguay', 'Uzbekistan', 'Vanuatu', 'Venezuela', 'Vietnam', 'Yemen', 'Zambia', 'Zimbabwe']
  end  
  
  def complete_ajax   
    query = params['remote']
    results = []
    for i in 0..9
      lbl = (query + i.to_s)      
      results << {label: lbl};      
    end    

    respond_to do |format|                         
      format.json { render :json => results }                      
    end    
  end
  
  def table
    
    names = ["Nixon","Cagatay","Rails","Silva",'Marcio','Almeida','Amaral','Joseph','Ed','Burns','Civicy','Glicejo','Marcos','Bruno','Lais','Paulo']    
    
    @persons = []
    for i in 0..20
      @person = Person.new()
      @person.id = i
      @person.first_name = names[Random.rand(0..15)]
      @person.last_name =  names[Random.rand(0..15)]
      @person.admin = rand(2) > 0
      @person.age = Random.rand(18..99)       
      @persons  << @person
    end
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
