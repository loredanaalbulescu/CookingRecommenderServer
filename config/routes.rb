Rails.application.routes.draw do
  resources :plans

  resources :checkins

  resources :has_badges

  resources :badges

  resources :recipes

  resources :categories

  resources :users

  match 'users/:fb_id/show_by_fb_id', to: 'users#show_by_fb_id', :via => :get, action: 'show_by_fb_id'
  
  match 'recipes/:category_id/show_by_category_id', to: 'recipes#show_by_category_id', :via => :get, action: 'show_by_category_id'
  
  match 'checkins/:user_id/show_by_user_id', to: 'checkins#show_by_user_id', :via => :get, action: 'show_by_user_id'
  match 'checkins/:recipe_id/show_by_recipe_id', to: 'checkins#show_by_recipe_id', :via => :get, action: 'show_by_recipe_id'

  match 'plans/:user_id/show_by_user_id', to: 'plans#show_by_user_id', :via => :get, action: 'show_by_user_id'

  match 'has_badges/:user_id/show_by_user_id', to: 'has_badges#show_by_user_id', :via => :get, action: 'show_by_user_id'
  match 'has_badges/:badge_id/show_by_badge_id', to: 'has_badges#show_by_badge_id', :via => :get, action: 'show_by_badge_id'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
