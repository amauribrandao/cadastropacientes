Rails.application.routes.draw do
  resources :clientes
  resources :cadastros
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "cadastros#index"
end
