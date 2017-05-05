Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pois#index"
  get "/near", to: "proximity_list#index"
  resources "pois"
end
