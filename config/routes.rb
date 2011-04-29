Rails3Base::Application.routes.draw do
  resources :articles

  devise_for :users

  as :user do
    get 'login', :to => 'devise/sessions#new', :as => 'new_user_session'
    get 'logout', :to => 'devise/sessions#destroy', :as => 'destroy_user_session'
  end

  root :to => 'dashboard#index'
end
