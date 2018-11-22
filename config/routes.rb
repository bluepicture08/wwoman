Rails.application.routes.draw do
 
  devise_for :tutors, path: 'tutors', controllers: { sessions: "tutors/sessions"}
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions"}
 root 'wwoman#index'
 
 get 'wwoman/index'
 get 'wwoman/offline'
 get 'wwoman/online'
 get 'wwoman/offline_edit'
 get 'wwoman/online_edit'
 get 'wwoman/online_new'
 get 'wwoman/offline_new'
 post 'wwoman/offline_create'
 post 'wwoman/online_create'
 post 'wwoman/qna_create'
 get 'wwoman/offline_show'
 get 'wwoman/online_show'
 get 'wwoman/qna'
 get 'wwoman/qna_create'
 get 'wwoman/qna_new'
 get 'wwoman/signin'
 get 'wwoman/offline_show/:id' => 'wwoman#offline_show'
 get 'wwoman/online_show/:id' => 'wwoman#online_show'
 get 'wwoman/offline_destroy/:id' => 'wwoman#offline_destroy'
 get 'wwoman/online_destroy/:id' => 'wwoman#online_destroy'
 get 'wwoman/qna_destroy/:id' => 'wwoman#qna_destroy'

 post "wwoman/:offline_id/like" => "likes#like_toggle"
 
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
