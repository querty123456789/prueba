Rails.application.routes.draw do
  resources :bank_subsidiaries
  resources :banks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'banks#index'
end
