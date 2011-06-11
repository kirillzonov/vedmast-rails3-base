DrevnMast::Application.routes.draw do
  resources :orders, :except => :edit

  resources :questions, :except => [:update, :delete]

  resources :informations, :only => [:index, :show]

  resources :categories, :only => :show

  resources :articles, :only => :show

  devise_for :users

  as :user do
    get 'login', :to => 'devise/sessions#new', :as => 'new_user_session'
    get 'logout', :to => 'devise/sessions#destroy', :as => 'destroy_user_session'
    get 'signup', :to => 'devise/registrations#new', :as => 'new_user_registration'
  end

  root :to => 'dashboard#index'
end
