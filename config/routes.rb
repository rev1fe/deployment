
Rails.application.routes.draw do
  resources :items
   post 'authenticate', to: 'authentication#authenticate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do


        resources :articles
        resources :admins


    end
    end
  end



