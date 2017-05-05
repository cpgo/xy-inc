Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pois#index", :defaults => { :format => 'json' }
  get "/near", to: "proximity_list#index", :defaults => { :format => 'json' }
  resources "pois", :defaults => { :format => 'json' }
end
