Rails.application.routes.draw do
  post 'doc_parser/insert'
  root to: "meters#index"
  resources :meters
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
