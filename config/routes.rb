Showcase::Application.routes.draw do
 
  get "showcase/button"
  get "showcase/index"
  get "showcase/ajax" 
  get "showcase/inputtextarea"
  get "showcase/tabview"
  get "showcase/inputtext"
  get "showcase/dialog" 
  get "showcase/checkbox"  
  get "showcase/fieldset"  
  get "showcase/breadcrumb"  
  get "showcase/panel"  
  get "showcase/password"  
  get "showcase/progressbar"     
  get "showcase/tooltip"
  get "showcase/dropdown"  
  get "showcase/themes"   
  get "showcase/setup"
  get "showcase/accordion"  
  get "showcase/radiobutton"  
  get "showcase/listbox"  
  get "showcase/model" 
  get "person/show" 
  get "showcase/spinner"
  get "showcase/growl"
  post "showcase/growl"
  get "showcase/menu"
  get "showcase/menubar"
  get "showcase/contextmenu"
  get "showcase/slidemenu"
  get "showcase/tieredmenu"
  
  post "ppr/setfirstname"  
  post "person/create" 
  post "showcase/model"  
  post "showcase/growl_info"   
  post "showcase/growl_error"   
  post "showcase/growl_warn"   
  post "showcase/growl_multiple"   
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'showcase#index'  
  get 'showcase' , to: redirect('/')
  
  get 'images/:name' , to: redirect('/assets/images/%{name}.%{format}')  
  get 'resources/demo/images/:name' , to: redirect('/assets/demo/images/%{name}.%{format}')
  get 'resources/demo/images/galleria/:name' , to: redirect('/assets/demo/images/galleria/%{name}.%{format}')
  get 'showcase/resources/demo/images/themes/themesIndex/:name' , to: redirect('/assets/demo/images/themes/themesIndex/%{name}.%{format}')
  get 'showcase/resources/demo/images/themes/:name' , to: redirect('/assets/demo/images/themes/%{name}.%{format}')
  
  
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
