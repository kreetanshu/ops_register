Rails.application.routes.draw do


  
  devise_for :users
  get 'customerrequests/index'

  get 'customerrequests/show'

  resources :customers
  resources :sproviders
  #resources :cooks
  
  get '/cooks' => 'cooks#index'
  get 'cooks/:spid' => 'cooks#cookrequest'
  get 'cooks/index'

  get 'cooks/show'

  get 'dataviews/new' => 'dataviews#new'
  devise_scope :user do    
  match '/sessions/user', to: 'devise/sessions#create', via: :post
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
  get 'customerrequests/:customer_id' => 'customerrequests#userrequest'
  resources :customerrequests
  resources :dataviews
  resources :cooks
  #resources :negative_feedbacks
  resources :negative_feedbacks
  root 'dataviews#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
