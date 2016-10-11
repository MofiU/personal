Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  namespace :home do
    get 'personal'
    get 'life'
    get 'about'
    get 'contact'
    post 'feedback'
  end

  resources :photos

end
