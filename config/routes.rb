ReviewWk6::Application.routes.draw do
  # Routes for the Quote resource:
  # CREATE
  get '/quotes/new', controller: 'quotes', action: 'new', as: 'new_quote'
  post '/quotes', controller: 'quotes', action: 'create'

  # READ
  get '/quotes', controller: 'quotes', action: 'index', as: 'quotes'
  get '/quotes/:id', controller: 'quotes', action: 'show', as: 'quote'

  # UPDATE
  get '/quotes/:id/edit', controller: 'quotes', action: 'edit', as: 'edit_quote'
  put '/quotes/:id', controller: 'quotes', action: 'update'

  # DELETE
  delete '/quotes/:id', controller: 'quotes', action: 'destroy'
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get '/categories/new', controller: 'categories', action: 'new', as: 'new_category'
  post '/categories', controller: 'categories', action: 'create'

  # READ
  get '/categories', controller: 'categories', action: 'index', as: 'categories'
  get '/categories/:id', controller: 'categories', action: 'show', as: 'category'

  # UPDATE
  get '/categories/:id/edit', controller: 'categories', action: 'edit', as: 'edit_category'
  put '/categories/:id', controller: 'categories', action: 'update'

  # DELETE
  delete '/categories/:id', controller: 'categories', action: 'destroy'
  #------------------------------

  # Routes for the Job resource:
  # CREATE
  get '/jobs/new', controller: 'jobs', action: 'new', as: 'new_job'
  post '/jobs', controller: 'jobs', action: 'create'

  # READ
  get '/jobs', controller: 'jobs', action: 'index', as: 'jobs'
  get '/jobs/:id', controller: 'jobs', action: 'show', as: 'job'

  # UPDATE
  get '/jobs/:id/edit', controller: 'jobs', action: 'edit', as: 'edit_job'
  put '/jobs/:id', controller: 'jobs', action: 'update'

  # DELETE
  delete '/jobs/:id', controller: 'jobs', action: 'destroy'
  #------------------------------

  # Routes for the Contractor resource:
  # CREATE
  get '/contractors/new', controller: 'contractors', action: 'new', as: 'new_contractor'
  post '/contractors', controller: 'contractors', action: 'create'

  # READ
  get '/contractors', controller: 'contractors', action: 'index', as: 'contractors'
  get '/contractors/:id', controller: 'contractors', action: 'show', as: 'contractor'

  # UPDATE
  get '/contractors/:id/edit', controller: 'contractors', action: 'edit', as: 'edit_contractor'
  put '/contractors/:id', controller: 'contractors', action: 'update'

  # DELETE
  delete '/contractors/:id', controller: 'contractors', action: 'destroy'
  #------------------------------

  # Routes for the Homeowner resource:
  # CREATE
  get '/homeowners/new', controller: 'homeowners', action: 'new', as: 'new_homeowner'
  post '/homeowners', controller: 'homeowners', action: 'create'

  # READ
  get '/homeowners', controller: 'homeowners', action: 'index', as: 'homeowners'
  get '/homeowners/:id', controller: 'homeowners', action: 'show', as: 'homeowner'

  # UPDATE
  get '/homeowners/:id/edit', controller: 'homeowners', action: 'edit', as: 'edit_homeowner'
  put '/homeowners/:id', controller: 'homeowners', action: 'update'

  # DELETE
  delete '/homeowners/:id', controller: 'homeowners', action: 'destroy'
  #------------------------------

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
