Rails.application.routes.draw do
  get 'albums/index'

  get 'albums/show'

  get 'tracks/index'

  get 'tracks/show'

  root 'session#new'
  post'sessions' => 'session#create'
  delete 'sessions/:id' => 'session#destroy'

  get 'register' => 'users#register'
  post 'users' => 'users#create'
  get 'users/:id' => 'users#show'

  get 'artists' => 'artists#index'
  get '/artists/:id', to:'artists#show', as: 'artist'

  get 'tracks' => 'tracks#index'
  get 'tracks/:id' => 'tracks#show'

  get 'albums' => 'albums#index'
  get 'albums/:id' => 'albums#show'

  post 'favartist' => 'favartist#create'
  delete 'favartist' => 'favartist#destroy'

  post 'favtracks' => 'favtracks#create'

  post 'favalbum' => 'favalbums#create'
  # get '/artists/:id', to:'artists#show', as: 'artist'



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
