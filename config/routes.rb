Rails.application.routes.draw do
  # get 'git/add'
  # get 'git/.'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items do
    resources :itemdetails
  end
  resources :users
end
